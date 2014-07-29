gulp = require 'gulp'
coffee = require 'gulp-coffee'

gulp.task 'watch', ->
  gulp.watch 'src', ['compile']

gulp.task 'compile', ->
  gulp
  .src('src/cscope.tcoffee')
  .pipe(coffee())
  .pipe(gulp.dest('lib/cscope.js'))

gulp.task 'default', ['watch', 'compile']
