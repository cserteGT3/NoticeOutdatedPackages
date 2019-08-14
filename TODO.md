Some tasks I need to do:
- [ ] iterate through
- [ ] parse `Package.toml` (`Pkg.TOML`?)
- [ ] void if not github
- [ ] get `User/PackageName.jl` from repo
- [ ] GitHub authentication
- [ ] `GitHub.jl`
  - [ ] `branches()`
  - [ ] if `gh-pages` is present, then
  - [ ] `commit()` of `gh-pages` and `master` (last commit from branches)
  - [ ] `commit.committer.date`

I should save the version of the package and the date of running too.

CSV should look like this (With better names):
```
packagename,uuid,repo,latestversion,datenow,server,mastersha,mastertime,ghpages,ghpagessha,ghpagestime
String,String,String,String,DateTime,Symbol/String,String,DateTime,Boolean,String,DateTime
```
