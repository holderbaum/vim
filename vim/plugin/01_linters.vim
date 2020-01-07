let g:linter_home = split(&rtp, ',')[0] . '/linters/'

let g:ale_javascript_standard_executable = g:linter_home . 'javascript/node_modules/.bin/standard'

let g:ale_ruby_rubocop_executable = g:linter_home . 'ruby/bin/rubocop'
let g:ale_ruby_rubocop_options = '-c ' . g:linter_home . 'ruby/rubocop.yml'

let g:ale_linters = {
\   'javascript': ['standard'],
\   'ruby': ['rubocop'],
\   'vue': ['eslint'],
\}
































