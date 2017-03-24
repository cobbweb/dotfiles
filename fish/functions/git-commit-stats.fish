function git-commit-stats
  set total_count 0
  set commit_count 0;
  for commit in (git rev-list --all --author=cobby)
      set commit_count (math $commit_count + 1)
      set word_count (git log --format=%B -n 1 $commit | wc -w)
      set total_count (math $word_count + $total_count)
  end

  echo "Total count: $total_count"
  echo "Number of commits: $commit_count"
  echo "Average: " (math $total_count / $commit_count)
end
