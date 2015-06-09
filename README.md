# snapit

[![Build Status](https://travis-ci.org/mhayes/snapit.svg?branch=master)](https://travis-ci.org/mhayes/snapit)

Need a quick way to automatically take screenshots? Well then this tool is for you. This early version will allow you to take screenshots named in a particular fashion so you can upload them tools like [InVision](http://www.invisionapp.com/).

## usage

```bash
gem install snapit
```

This tool used `*.yml` files to automatically load up and take screenshots for you. So let's assume you have the following script:

```example_script.yml
name: 'My Personal Site'
urls:
  - homepage: "http://markhay.es/"
  - about: "http://markhay.es/about"
```

You can then run it like so:

```bash
snapit capture example_script.yml
```

And you'll get a series of screenshots like so:

```bash
.
├── example_script.yml
└── snapit_captures
    └── My_Personal_Site
        ├── about.png
        └── homepage.png
```

## todo

  - [ ] Integrate with tools like InVision
  - [ ] Take screenshots at certain time intervals (i.e. to capture phases of an animation)

## license

snapit is released under the [MIT License](http://opensource.org/licenses/MIT).
