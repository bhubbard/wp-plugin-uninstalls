#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%edit_admin'"
wp option delete 'eun_activated_on'
wp option delete 'eun_setting_options'

