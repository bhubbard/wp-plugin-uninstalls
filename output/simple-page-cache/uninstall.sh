#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simplepagecache_settings_filename'
wp option delete 'simplepagecache_show_activation_notice'

