gulp = require 'gulp'
coffee = require 'gulp-coffee'
tcoffee = require 'gulp-tcoffee'

gulp.task 'watch', ->
  gulp.watch 'src/**/*.tcoffee', ['tcoffee']

gulp.task 'tcoffee', ->
  gulp
  .src 'src/**/*.tcoffee'
  .pipe tcoffee(
    csAst:
      raw: true
    jsAst:
      bare: true
  )
  .pipe gulp.dest 'lib'

gulp.task 'default', ['watch', 'tcoffee']
