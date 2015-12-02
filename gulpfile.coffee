gulp = require 'gulp'
jade = require 'gulp-jade'

gulp.task 'jade', ->
  gulp.src 'src/jade/index.jade'
    .pipe jade()
    .pipe gulp.dest 'public'

gulp.task 'default', [
  'jade'
]
