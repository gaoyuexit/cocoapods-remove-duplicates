# cocoapods-remove-duplicates

> 该插件会在**pod install**过程中自动移除掉重复的`.a`, `.framework`库
>
> The plugin will automatically remove the duplicate '. A' and '. Framework' Libraries during the  **pod install**  process

## Installation

### Installation first way

```powershell
$ gem install cocoapods-remove-duplicates
```

### Installation second way

use **Gemfile** 

1. in Gemfile

```ruby
#in Gemfile
#source 'https://gems.ruby-china.com'
#or
#source 'https://rubygems.org'

gem 'cocoapods-remove-duplicates'
```

2. in Gemfile Dir exec:

```powershell
$ bundle install
```



## Usage

in Project **Podfile** input: 

    #in Podfile
    plugin 'cocoapods-remove-duplicates'

then 

```powershell
$ pod install
```

