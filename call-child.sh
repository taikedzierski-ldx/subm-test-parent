result="$(bash child/test_branch.sh)"

echo "Got '$result'"

res=0
[[ "$result" = "Before" ]] || res=$?
echo $res
exit $res
