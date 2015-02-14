module.exports = (grunt) ->
  pkg = grunt.file.readJSON('package.json')

  config =

    coffee:
      main:
        files: [
          expand: true
          cwd: 'assets/'
          src: ['**/*.coffee']
          dest: "assets/"
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
          cwd: 'assets/'
          src: ['**/*.less']
          dest: "assets/"
          ext: '.css'
        ]

    recess:
      options:
        strictPropertyOrder: false
      main:
        src: ['assets/style/**/*.less']

    cssmin:
      main:
        expand: true
        cwd: 'assets/style/'
        src: ['*.css', '!*.min.css']
        dest: 'assets/style/'

    watch:
      coffee:
        files: ['assets/**/*.coffee']
        tasks: ['coffeelint', 'coffee']
      js:
        files: ['assets/script/**/*.js']
        tasks: ['uglify']
      less:
        files: ['assets/**/*.less']
        tasks: ['recess', 'less']
      css:
        files: ['assets/style/**/*.css']
        tasks: ['cssmin']
      grunt:
        files: ['Gruntfile.coffee']

  tasks =
    # Building block tasks
    build: ['coffeelint', 'coffee', 'uglify', 'recess', 'less', 'cssmin']
    # Development tasks
    default: ['build', 'watch']

  # Project configuration.
  grunt.initConfig config
  grunt.loadNpmTasks name for name of pkg.devDependencies when name[0..5] is 'grunt-'
  grunt.registerTask taskName, taskArray for taskName, taskArray of tasks