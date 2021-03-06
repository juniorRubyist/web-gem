# web-gem [![Gem Version](https://badge.fury.io/rb/web-gem.svg)](https://badge.fury.io/rb/web-gem)
A simple Ruby-based web control tool for Linux.

This tool edits the `/etc/hosts` file.
It enables only allowed websites.

When using, it is highly recommended that you do not use more than one user at once.

To undo changes, you must edit `/etc/hosts` and remove the lines to enable again.

To allow sites, you must also edit `/etc/nsswitch.conf` using `nano`. Scroll down to the line that says
```sh
hosts files dns
```
and remove `dns` or add that line and remove `dns`.
To allow all sites again, add `dns` to that line again.

Consult Ubuntu article http://bit.ly/1I1zz69 for more information.

Now available on RubyGems at https://rubygems.org/gems/web-gem.

To execute RubyGem version, run the following:

```
% irb
>> require 'web-gem'
```

To execute source code execute:

```
% git clone https://github.com/jgeis/web-gem.git
% cd web-gem
% sudo ruby main.rb
```
