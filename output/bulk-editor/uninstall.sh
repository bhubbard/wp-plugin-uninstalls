#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpbe_show_text_editor'
wp option delete 'wpbe_site_separate_settings'
wp option delete 'wpbe_site_editors_post_types'
wp option delete 'wpbe_site_editor_visibility'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbe_options_%'"
wp option delete 'wpbe_rate_alert'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpbe_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpbe_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpbe_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpbe_notice_dismissed'"
