#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'line_wp_setting_options_name'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%channel_access_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%channel_secret'"
wp option delete 'line_wp_rated'

# Delete Transients
wp transient delete 'line-wp-error-send-to-line-image'
wp transient delete 'line-wp-error-send-to-line'
wp transient delete 'line-wp-success-send-to-line'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_line_wp_last_send_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_line_wp_last_send_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_line_wp_last_send_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_line_wp_last_send_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_line_wp_send_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_line_wp_send_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_line_wp_send_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_line_wp_send_text'"
