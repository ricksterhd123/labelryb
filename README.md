# Labelryb

A quick and dirty command line tool used to convert PDF into ZPL using http://labelary.com/ public REST API

## Installation
`clone repository && cd`
`chmod +x bin/setup`
`bin/setup`
`gem build`
`gem install labelryb-{VERSION}.gem`

## Usage
`labelryb -i examples/test.zpl -o test.pdf`

## TODO
- File URI validation on input
- Add dpmm, width, height and other options
- Support PNG and other output formats
- Detect multiple pages (index option)
- Handle API errors
