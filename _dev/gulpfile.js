const gulp = require("gulp");
const imagemin = require("gulp-imagemin");
const concat = require("gulp-concat");
const terser = require("gulp-terser");
const sourcemaps = require("gulp-sourcemaps");
const postcss = require("gulp-postcss");
const cssnano = require("cssnano");
const autoprefixer = require("autoprefixer");
const sass = require("gulp-sass");
const { src, series, parallel, dest, watch, prependListener } = require("gulp");

const jsPath = "js/**/*.js";
const cssPath = "css/**/*.scss";

function imgTask() {
  return src("img/*").pipe(imagemin()).pipe(gulp.dest("../build/images"));
}

function jsTask() {
  return src(jsPath)
    .pipe(sourcemaps.init())
    .pipe(concat("theme.js"))
    .pipe(terser())
    .pipe(sourcemaps.write("."))
    .pipe(dest("../build/js"));
}

function cssTask() {
  return src(cssPath)
    .pipe(sourcemaps.init())
    .pipe(sass().on("error", sass.logError))
    .pipe(postcss([autoprefixer(), cssnano()]))
    .pipe(sourcemaps.write("."))
    .pipe(dest("../assets/css"));
}

function watchTasks() {
  watch([cssPath, jsPath], { interval: 1000 }, parallel(cssTask, jsTask));
}
exports.cssTask = cssTask;
exports.jsTask = jsTask;
exports.imgTask = imgTask;
// exports.default = parallel(imgTask, jsTask);
exports.default = series(parallel(imgTask, jsTask), watchTasks);
