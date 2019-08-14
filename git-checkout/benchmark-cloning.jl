using BenchmarkTools

const cmds = [`git clone -q https://github.com/tlienart/JuDoc.jl.git t`,
		`git clone -q --no-checkout https://github.com/tlienart/JuDoc.jl.git t`,
		`git clone -q --depth 1 --no-single-branch https://github.com/tlienart/JuDoc.jl.git t`,
		`git clone -q --depth 1 --no-single-branch --no-tags https://github.com/tlienart/JuDoc.jl.git t`]

function test(command)
	mkdir("temp")
	run(command)
	rm("temp/", force=true, recursive=true)
end

function testall(A)
	ress = [@benchmark test($a) for a in A]
	for a in ress
		display(a)
	end
	ress
end
		
		
		