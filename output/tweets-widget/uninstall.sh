#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'twitter_api_%'"
wp option delete 'loklak-settings'
wp option delete 'loklak_init'
wp option delete 'loklak-settings[loklak_api]'

