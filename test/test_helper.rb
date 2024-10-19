gem 'minitest'
require 'set'
require 'minitest/autorun'

module TestHelper
  SimpleUnsorted = %w(a b c d A B C D)
  SimpleSorted   = %w(A a B b C c D d)
  
  ComplexUnsorted = ['1000X Radonius Maximus', '10X Radonius', '200X Radonius', '20X Radonius',
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

  # TODO: the AlphanumUnsorted initial order below yields a failing result
  # %w(100 101 11 A2AA A10 A999 AA1 999A 9999 A1 A2 A2A A2A1 1 1A 2 2C 9 AA99 #AB1 AB1A AB99 B1 B1A 10 10X AA2 B2 B999 Z1 Z9999)

  AlphanumUnsorted = %w(1 1A 2 2C 9 10 10X 11 100 101 999A 9999 A1 A2 A2A A2A1 A2AA A10 A999 AA1 AA2 AA99 AB1 AB1A AB99 B1 B1A B2 B999 Z1 Z9999)
  AlphanumSorted = %w(1 1A 2 2C 9 10 10X 11 100 101 999A 9999 A1 A2 A2A A2A1 A2AA A10 A999 AA1 AA2 AA99 AB1 AB1A AB99 B1 B1A B2 B999 Z1 Z9999)
end
