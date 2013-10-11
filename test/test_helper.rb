require 'test/unit'

module NaturalSort
  Base = ['a', 'b', 'c', 'd', 'A', 'B', 'C', 'D']
  BaseSorted = ['A', 'a', 'B', 'b', 'C', 'c', 'D', 'd']
  
  Complex = ['1000X Radonius Maximus', '10X Radonius', '200X Radonius', '20X Radonius', 
    '20X Radonius Prime', '30X Radonius', '40X Radonius', 'Allegia 50 Clasteron', 
    'Allegia 500 Clasteron', 'Allegia 51 Clasteron', 'Allegia 51B Clasteron', 'Allegia 52 Clasteron', 
    'Allegia 60 Clasteron', 'Alpha 100', 'Alpha 2', 'Alpha 200', 'Alpha 2A', 'Alpha 2A-8000', 
    'Alpha 2A-900', 'Callisto Morphamax', 'Callisto Morphamax 500', 'Callisto Morphamax 5000', 
    'Callisto Morphamax 600', 'Callisto Morphamax 700', 'Callisto Morphamax 7000', 
    'Callisto Morphamax 7000 SE', 'Callisto Morphamax 7000 SE2', 'QRS-60 Intrinsia Machine', 
    'QRS-60F Intrinsia Machine', 'QRS-62 Intrinsia Machine', 'QRS-62F Intrinsia Machine', 
    'Xiph Xlater 10000', 'Xiph Xlater 2000', 'Xiph Xlater 300', 'Xiph Xlater 40', 
    'Xiph Xlater 5', 'Xiph Xlater 50', 'Xiph Xlater 500', 'Xiph Xlater 5000', 'Xiph Xlater 58']
  
  ComplexSorted = ['10X Radonius', '20X Radonius', '20X Radonius Prime', '30X Radonius', 
    '40X Radonius', '200X Radonius', '1000X Radonius Maximus', 'Allegia 50 Clasteron', 
    'Allegia 51 Clasteron', 'Allegia 51B Clasteron', 'Allegia 52 Clasteron', 
    'Allegia 60 Clasteron', 'Allegia 500 Clasteron', 'Alpha 2', 'Alpha 2A', 'Alpha 2A-900', 
    'Alpha 2A-8000', 'Alpha 100', 'Alpha 200', 'Callisto Morphamax', 'Callisto Morphamax 500',
    'Callisto Morphamax 600', 'Callisto Morphamax 700', 'Callisto Morphamax 5000', 
    'Callisto Morphamax 7000', 'Callisto Morphamax 7000 SE', 'Callisto Morphamax 7000 SE2',
    'QRS-60 Intrinsia Machine', 'QRS-60F Intrinsia Machine', 'QRS-62 Intrinsia Machine', 
    'QRS-62F Intrinsia Machine', 'Xiph Xlater 5', 'Xiph Xlater 40', 'Xiph Xlater 50',
    'Xiph Xlater 58', 'Xiph Xlater 300', 'Xiph Xlater 500', 'Xiph Xlater 2000', 
    'Xiph Xlater 5000', 'Xiph Xlater 10000']
end
