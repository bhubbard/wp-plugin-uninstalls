#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'main-settings'
wp option delete 'jal_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_contacts_export_sync'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_contacts_import_sync'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_coupons_export_sync'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_coupons_import_sync'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_orders_export_sync'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_orders_sync'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_services_export_sync'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_services_import_sync'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cs_client_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cs_client_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cs_client_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cs_client_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cs_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cs_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cs_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cs_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cs_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cs_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cs_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cs_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cs_import_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cs_import_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cs_import_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cs_import_id'"
