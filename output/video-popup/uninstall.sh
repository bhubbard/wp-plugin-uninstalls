#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_first_use'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_admin_notify'"
wp option delete 'video_popup_settings'
wp option delete 'video_popup_settings_version'
wp option delete 'video_popup_settings_onpage_load'
wp option delete 'video_popup_settings_onpage_load_version'
wp option delete 'video_popup_settings_first_use'
wp option delete 'video_popup_settings_admin_notify'

