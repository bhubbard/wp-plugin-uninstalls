#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'CTL_ARCADE_LITE_PLUGIN_VERSION'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_do_activation_redirect'"
wp option delete 'ctl-playful-kitty-c2-lite_do_activation_redirect'

