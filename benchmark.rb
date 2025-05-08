require 'benchmark'

n = 1_000_000_000 # ベンチマークの繰り返し回数

string_hash = { 'foo' => 'bar' }
symbol_hash = { foo: 'bar' }
number_hash = { 100 => 'bar' }

str = 'foo'
sym = :foo
num = 100

Benchmark.bmbm do |x|
  x.report('String') { n.times { string_hash[str] } }
  x.report('Symbol') { n.times { symbol_hash[sym] } }
  x.report('Number') { n.times { number_hash[num] } }
end
