#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wps_dolibarr'
wp option delete 'wpshop2_database_version'
wp option delete 'wps_page_ids'
wp option delete 'plugin_permalinks_flushed'
wp option delete 'wps_shipping_cost'
wp option delete 'wps_payment_methods'

# Delete Transients
wp transient delete 'wps_product_already_exist'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eo_menu_minimize'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eo_menu_minimize'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eo_menu_minimize'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eo_menu_minimize'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_user_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_user_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_user_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_user_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpshop_api_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpshop_api_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpshop_api_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpshop_api_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_external_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_external_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_external_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_external_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'p_user_registration_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'p_user_registration_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'p_user_registration_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'p_user_registration_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sync_sha_256'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sync_sha_256'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sync_sha_256'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sync_sha_256'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fullpath'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fullpath'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fullpath'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fullpath'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_traitment_in_progress'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_traitment_in_progress'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_traitment_in_progress'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_traitment_in_progress'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tracking_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tracking_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tracking_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tracking_link'"
