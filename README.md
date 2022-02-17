# subm-test-parent

Submodule test repository parent

1. Create a commit in child with a script at `./test_branch.sh` to echo "Before"
2. Add a submodule to this parent, pointing at https://github.com/taikedzierski-ldx/subm-test-child
3. Create a commit with script in Parent `./call-child.sh` to call `submodule//test_branch.sh` and check for "Before"
4. Add a commit in child to change the script to say "After", push
5. Create a branch `subm-test` in Parent
6. Update Parent `subm-test` branch to point to new commit in Child, and change to check for "After", push

In CI

1. Create job to clone parent with submodules, display commit tree, and to call `./call-child.sh` from `main` branch
2. See that it calls the child job and it says "After"
3. Re-run the job against `subm-test` branch
