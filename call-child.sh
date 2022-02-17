git log --graph --all --oneline --decorate

result="$(bash child/test_branch.sh)"

echo "Got '$result'"

res=0
[[ "$result" = "After" ]] || res=$?
echo $res
exit $res
