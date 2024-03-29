require './lib/services/open_ai_service'
require './lib/utils/string_util'
class Travel
    def dates(start_date, end_date)
        @start = start_date
        @end = end_date
        self
    end
    
    def origin(origin)
        @origin = origin
        self
    end

    def destination(destination)
        @destination = destination
        self
    end

    def plan!
        {
            travel_itinerary: travel_itinerary,
            weather: weather,
            violence_info: violence_info,
            best_way_to_go: best_way_to_go
        }
    end

    private def travel_itinerary
        prompt = Utils::Prompt.itinerary_text(@destination, @start_date, @end_date)
        OpenAiService.new.call(prompt)
    end

    private def weather
        prompt = Utils::Prompt.weather_text(@destination, @start_date)
        OpenAiService.new.call(prompt)
    end

    private def violence_info
        prompt = Utils::Prompt.violence_info_text(@destination)
        OpenAiService.new.call(prompt)
    end

    private def best_way_to_go
        prompt = Utils::Prompt.best_way_to_go_text(@destination, @origin)
        OpenAiService.new.call(prompt)
    end
end