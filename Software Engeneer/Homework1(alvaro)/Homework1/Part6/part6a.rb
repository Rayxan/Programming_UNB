class Numeric
    @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1}
    
    def method_missing(method_id, *args, &block)  # capture all args in case have to call super
        singular_currency = method_id.to_s.gsub( /s$/, '')
        if @@currencies.has_key?(singular_currency)
            self * @@currencies[singular_currency]
        else
            super
        end

    end
    def in(destination_currency)
        destination_currency = destination_currency.to_s.gsub(/s$/, '')

        result = (self *(1 / @@currencies[destination_currency])).round(2)

        result
    end
    
end

puts(1.euro.in(:rupee))
puts(5.dollars.in(:euros))
puts(10.euros.in(:rupees))

