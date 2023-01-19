# Labelryb

A quick and dirty command line tool used to convert ZPL into PDF using http://labelary.com/ public REST API

## Installation
```bash
# clone git repository && cd
chmod +x bin/setup
bin/setup
# build && install gem
gem build
gem install labelryb-0.1.0.gem
```

## Usage
`labelryb -i examples/test.zpl -o test.pdf`

## TODO
- File URI validation on input
- Add dpmm, width, height and other options
- Support PNG and other output formats
- Detect multiple pages (index option)
- Handle API errors
