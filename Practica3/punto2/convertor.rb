class Converter

    def mts_to_feets(meters)
        p "#{meters} metros es igual a #{meters *3.2808} pies"
    end

    def feets_to_mts(feets)
        p "#{feets} pies es igual a #{feets / 3.2808} metros "
    end
end