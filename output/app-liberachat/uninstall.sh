#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'liberachat_nick'
wp option delete 'liberachat_server'
wp option delete 'liberachat_chan'
wp option delete 'liberachat_style'
wp option delete 'liberachat_height'
wp option delete 'liberachat_width'

