module.exports = (grunt) ->
  pkg = grunt.file.readJSON('package.json')

  config =

    coffee:
      main:
        files: [
          expand: true
          cwd: 'assets/script'
          src: ['**/*.coffee']
          dest: "assets/script"
          ext: '.js'
        ]

    coffeelint:
      options:
        "camel_case_classes": true,
        "indentation": 2,
        "line_endings": "linux",
        "no_empty_param_list": true,
        "no_implicit_braces": true,
        "no_stand_alone_at": true,
        "no_tabs": true,
        "no_trailing_semicolons": true,
        "no_trailing_whitespace": true,
        "space_operators": true
      main:
        src: ['assets/script/**/*.coffee']

    uglify:
      options:
        sourceMap: true
        sourceMapIncludeSources: true
      main:
        files: [{
          expand: true
          cwd: 'assets/script/'
          src: ['*.js', '!*.min.js']
          dest: 'assets/script/'
        }]

    less:
      main:
        files: [
          expand: true
          cwd: 'assets/style'
          src: ['**/*.less', '!variables.less']
          dest: "assets/style"
          ext: '.css'
        ]

    recess:
      options:
        strictPropertyOrder: false
      main:
        src: ['assets/style/screen.less']

    cssmin:
      main:
        expand: true
        cwd: 'assets/style/'
        src: ['*.css', '!*.min.css']
        dest: 'assets/style/'

    connect:
      http:
        options:
          hostname: "*"
          port: process.env.PORT || 80
          livereload: true

    watch:
      options:
        livereload: true
      coffee:
        files: ['assets/script/**/*.coffee']
        tasks: ['coffeelint', 'coffee', 'uglify']
      less:
        options:
          livereload: false
        files: ['assets/style/**/*.less']
        tasks: ['recess', 'less', 'cssmin']
      css:
        files: ['assets/style/**/*.css']
      templates:
        files: ['*.hbs', 'partials/*.hbs']
      grunt:
        files: ['Gruntfile.coffee']

  tasks =
    # Building block tasks
    build: ['coffeelint', 'coffee', 'uglify', 'recess', 'less', 'cssmin']
    # Development tasks
    default: ['build', 'connect', 'watch']

  # Project configuration.
  grunt.initConfig config
  grunt.loadNpmTasks name for name of pkg.devDependencies when name[0..5] is 'grunt-'
  grunt.registerTask taskName, taskArray for taskName, taskArray of tasks