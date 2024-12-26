# start a new cargo project without making git repo
alias 'cargo new'='cargo new --vcs none'

# remove all target dirs
# from: https://www.reddit.com/r/rust/comments/vlpnfk/i_highly_recommend_writing_a_rust_app_to_delete/
alias clean='find . -name "Cargo.toml" -exec cargo clean --manifest-path {} \;'
