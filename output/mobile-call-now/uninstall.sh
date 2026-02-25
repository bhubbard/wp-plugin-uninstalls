#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'color%'"
wp option delete 'mobile_calL_now'
wp option delete 'mobile_calL_now_activation'
wp option delete 'mobile_calL_now_text'
wp option delete 'color1'
wp option delete 'color2'
wp option delete 'color3'
wp option delete 'color4'

