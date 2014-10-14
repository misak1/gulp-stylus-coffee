gulp = require('gulp')
gutil = require('gulp-util')
coffee = require('gulp-coffee')
stylus = require('gulp-stylus')

paths =
  coffee: 'coffee/**/*',
  stylus: 'stylus/**/*'

gulp.task 'coffee', ->
    gulp.src(paths.coffee + '.coffee')
      .pipe(coffee({bare: true}).on('error', gutil.log))
      .pipe(gulp.dest('js/'))

gulp.task 'stylus', ->
    gulp.src(paths.stylus + '.styl')
      .pipe(stylus())
      .pipe(gulp.dest('css/'))

gulp.task 'watch', ->
    gulp.watch(paths.coffee, ['coffee'])
    gulp.watch(paths.stylus, ['stylus'])

#gulp.task 'default', ->
#    gulp.run 'watch','scripts', 'images'
gulp.task 'default', ->
    gulp.run 'watch'
