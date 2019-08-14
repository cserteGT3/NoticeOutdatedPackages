# notice-packages

In the last couple of months I realised that lot of packages have outdated documentation, because building/deploying it fails.
My goal is to notice every package of these.

## Workflow

1. Iterate through all registered packages.
2. Check the date of the last commit on branch `master` and `gh-pages`.
	* Use [GitHub.jl](https://github.com/JuliaWeb/GitHub.jl).
	* Or cloning every single package (see `./git-checkout` for comparison of cloning methods).
3. Save everything into a database (csv file).
	* Followings are planned to save:
		* Project TOML?
		* Date of last commit on ´master´ and `gh-pages`
		* Date of check
4. Processing the database.
5. Notifying packages whose docs is outdated (`GitHub.jl`).

## Couple of thoughts

Not all packages are on GitHub, with this method only GitHub ones can be checked.
First I only want to gather the data, then write a post on [discourse](https://discourse.julialang.org/) to ask people what they think of this idea.
Then I may publish the databse and open issues.