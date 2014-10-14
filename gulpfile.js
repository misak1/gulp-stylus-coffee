var gulp = require('gulp');
var gutil = require('gulp-util');
var coffee = require('gulp-coffee');
var stylus = require('gulp-stylus');

var paths = {
  coffee: 'coffee/**/*',
  stylus: 'stylus/**/*'
};
gulp.task('coffee', function() {
    gulp.src(paths.coffee + '.coffee')
      .pipe(coffee({bare: true}).on('error', gutil.log))
      .pipe(gulp.dest('js/'));
});
gulp.task('stylus', function() {
    gulp.src(paths.stylus + '.styl')
      .pipe(stylus())
      .pipe(gulp.dest('css/'));
});
gulp.task('watch', function() {
    gulp.watch(paths.coffee, ['coffee']);
    gulp.watch(paths.stylus, ['stylus']);
});
//gulp.task('default', ['watch', 'scripts', 'images']);
gulp.task('default', ['watch']);
