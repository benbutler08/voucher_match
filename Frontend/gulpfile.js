var gulp = require('gulp')
var browserSync = require('browser-sync').create()
var sass = require('gulp-sass')
var plumber = require('gulp-plumber')
var autoprefixer = require('gulp-autoprefixer')

// Static Server + watching scss/html files
gulp.task('serve', ['sass', 'js'], function() {
  browserSync.init({
    server: './dist'
  })

  gulp.watch('./scss/**/*.scss', ['sass'])
  gulp.watch(['./dist/*.html', './dist/js/*.js']).on('change', browserSync.reload)
})

// Compile sass into CSS & auto-inject into browsers
gulp.task('sass', function() {
  return gulp
    .src('./scss/**/*.scss')
    .pipe(plumber())
    .pipe(sass())
    .pipe(
      autoprefixer(['last 15 versions', '> 1%', 'ie 8', 'ie 7'], {
        cascade: true
      })
    )
    .pipe(gulp.dest('./dist/css'))
    .pipe(browserSync.stream())
})

gulp.task('js', function() {
  return gulp
    .src('./js/**/*.js')
    .pipe(gulp.dest('./dist/js'))
    .pipe(browserSync.stream())
})

gulp.task('default', ['serve'])
