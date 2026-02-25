#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wb_ads_rotator_admin_welcome_options'
wp option delete 'buddypress-ads-rotator_admin_faq_option'
wp option delete 'default_post_edit_rows'
wp option delete 'wb_ads_image_id'

# Delete Transients
wp transient delete '_wb_ads_rotator_is_new_install'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wb_ads_rotator_values'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wb_ads_rotator_values'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wb_ads_rotator_values'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wb_ads_rotator_values'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wb_ads_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wb_ads_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wb_ads_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wb_ads_enable'"
