#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pulpo_send_to_pulpo_state'
wp option delete 'pulpo_force_shipping'
wp option delete 'pulpo_test_mode'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tenant_id'"
wp option delete 'pulpo_shipping_db_version'
wp option delete 'pulpo_send_order_state'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_updated_for_pulpo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_updated_for_pulpo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_updated_for_pulpo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_updated_for_pulpo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_barcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_barcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_barcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_barcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_management_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_management_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_management_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_management_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_variable_barcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_variable_barcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_variable_barcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_variable_barcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_variable_management_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_variable_management_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_variable_management_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_variable_management_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pulpo_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pulpo_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pulpo_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pulpo_id'"
