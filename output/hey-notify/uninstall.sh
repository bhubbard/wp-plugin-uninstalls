#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_status'"
wp option delete 'default_post_edit_rows'
wp option delete 'hey_notify_settings'
wp option delete 'hey_notify_settings_general'
wp option delete 'hey_notify_settings_licenses'
wp option delete 'hey_notify_settings_uninstall'
wp option delete 'hey_notify_live_preview'
wp option delete 'hey_notify_custom_post_types'
wp option delete 'hey_notify_version'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"

# Delete Transients
wp transient delete 'update_plugins'

