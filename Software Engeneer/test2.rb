rx = {:fox=>/^arm/, 'fox'=>[%r{AN(DO)$}, /an(do)/i]}
puts rx['fox'][1] =~ "ARMANDO"
puts rx['fox'][1] =~ "armando"
