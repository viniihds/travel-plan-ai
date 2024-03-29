module Utils

    class Prompt
        def self.itinerary_text(destination, start_date, end_date)
            "Estou viajando para #{destination} no dia #{start_date} e voltando no dia #{end_date} por favor me sugira um roteiro de viagem para cada dia"
        end
        def self.weather_text(destination, start_date)
            "Estou viajando para #{destination} no dia #{start_date}, baseado em dados históricos como é o clima nesse período"
        end
        def self.violence_info_text(destination)
            "Estou viajando para #{destination}, como é a situação da violência nesse lugar"
        end
        def self.best_way_to_go_text(destination, origin)
            "Estou viajando para #{destination} saindo de #{origin}, qual a forma mais eficiente para uma viagem entre esses lugares"
        end
    end
end