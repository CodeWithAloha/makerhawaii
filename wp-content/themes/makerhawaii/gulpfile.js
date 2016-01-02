var gulp = require('gulp');
var $ = require('gulp-load-plugins')();
var webpack = require('webpack-stream');
var config = require('./webpack.config.js');
var objectAssign= require('object-assign');
var del = require('del');

gulp.task('js', function() {
    return gulp.src('js/src/index.js')
      .pipe(webpack(config))
      .pipe(gulp.dest('.'));
});

gulp.task('inject', ['js'], function() {
    var sources = ['./js/bundle.js'];

    var config = {
      addPrefix:'http://localhost:8080',
      addRootSlash: false
    };

    if(process.env.NODE_ENV === 'production') {
      sources.push('./style.css');
      objectAssign(config, {
        addPrefix: '/wp-content/themes/makerhawaii',
        addRootSlash: true
      });
    } else {
      del.sync('style.css');
    }

    var sources = gulp.src(['./js/bundle.js', './style.css']);
    gulp.src('./views/base.twig')
      .pipe($.inject(sources, config))
      .pipe(gulp.dest('./views'));
})

gulp.task('default', ['inject']);
