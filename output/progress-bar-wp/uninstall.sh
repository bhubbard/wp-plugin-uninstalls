#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dazz_pb_b_review'
wp option delete 'wpsm_progressbar_wp_default_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'progressbar_wp_Shortcode_Settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'progressbar_wp_Shortcode_Settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'progressbar_wp_Shortcode_Settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'progressbar_wp_Shortcode_Settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'progressbar_wp_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'progressbar_wp_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'progressbar_wp_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'progressbar_wp_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'progressbar_wp_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'progressbar_wp_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'progressbar_wp_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'progressbar_wp_count'"
