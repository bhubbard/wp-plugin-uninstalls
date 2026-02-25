#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'romaniachat_nick'
wp option delete 'romaniachat_server'
wp option delete 'romaniachat_chan'
wp option delete 'romaniachat_style'
wp option delete 'romaniachat_height'
wp option delete 'romaniachat_width'

