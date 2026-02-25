#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sg_enable_maplink_admin_email'
wp option delete 'sg_enable_picker'
wp option delete 'sg_enable_picker_billing'
wp option delete 'sg_enable_picker_shipping'
wp option delete 'sg_eneble_autodetect_user_location'
wp option delete 'sg_google_api'
wp option delete 'sgclp_detect_button_label'
wp option delete 'sg_map_title_for_billing'
wp option delete 'sg_hide_picker_fields'
wp option delete 'sg_map_title_for_shipping'

# Delete Transients
wp transient delete 'sg_location_plugin_actived_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_long'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_long'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_long'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_long'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_long'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_long'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_long'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_long'"
