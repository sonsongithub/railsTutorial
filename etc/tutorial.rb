################################################################################
#
# map 
#
################################################################################
# map and reduce
p [1, 2, 3].map{|i| i * 3}
p [1, 2, 3].map{|i| i * 3}.reduce{|r, i| r + i}

################################################################################
#
# add methods to class
#
################################################################################
# adding methods to object
obj = "aaa"
def obj.hoge
	"hoge"
end

module StringExtension
	def char_count
		self.length
	end
end

class String
	# mix-in
	include StringExtension

	# add methods to class
	def hoge
		"hoge"
	end
end

str = "temp"

puts str.char_count
puts str.hoge

################################################################################
#
# yield
#
################################################################################
def threetimes
	if block_given? # ブロックが投げられたか，どうか
		yield "a"		# ここでブロックが呼ばれるというわけ
		yield "b"
		yield "c"
		#yield				# これはエラー
	end
end
threetimes{|n| puts n}

# lambda関数
proc = lambda{|n| puts n}
proc = lambda{|n| puts n}
threetimes &proc

################################################################################
#
# block
#
################################################################################
# lambda関数2 メソッドを動的に生成して呼ぶ
def create_check_age(threshold)
	-> (human){human.age >= threshold}
end

check_adult_japan = create_check_age(20);

class Human
	attr_accessor :age
end

# check
man = Human.new
man.age = 20
puts check_adult_japan.call(man)

################################################################################
#
# block
#
################################################################################
File.open("./tutorial.rb") do |file|
	puts file.read.length
	# you don't have to close file object
end

################################################################################
#
# eval
#
################################################################################
obj = Human.new
obj.age = 10
obj.instance_eval("puts self.age")

obj.instance_eval do
	def hoge
		puts 'hoge'
	end
	def bar
		puts 'bar'
	end
	def method_missing(method, *args)　# *argsは可変長引数
		puts "no method"
	end
end
obj.hoge
obj.bar

String.class_eval do 
	def hoge
		puts "hogeeeee"
	end
end
str = "hello"
str.hoge

obj.aaa
