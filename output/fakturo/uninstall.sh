#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fakturo_dashboard_options_group'
wp option delete 'fakturo_system_options_group'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp option delete 'fktr_license_keys'
wp option delete 'fktr_license_status'
wp option delete 'fktr_first_time_wizard'
wp option delete 'fakturo_info_options_group'
wp option delete 'last_receipt_number'
wp option delete 'last_invoice_number'
wp option delete 'fktr_last_mananger_caps'
wp option delete 'fktr_last_seller_caps'
wp option delete 'fktr_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fakturo_subscription_email_%'"

# Delete Transients
wp transient delete 'fakturo_addons_data'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'balance'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'balance'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'balance'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'balance'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'assigned'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'assigned'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'assigned'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'assigned'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stocks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stocks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stocks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stocks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'receipts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'receipts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'receipts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'receipts'"
