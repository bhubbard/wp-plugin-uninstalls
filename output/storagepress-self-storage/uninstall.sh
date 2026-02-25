#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'storagepress_name'
wp option delete 'storagepress_address'
wp option delete 'storagepress_phone'
wp option delete 'storagepress_email'
wp option delete 'storagepress_rental_terms'
wp option delete 'storagepress_checks_payable_to'
wp option delete 'storagepress_listing_page'
wp option delete 'storagepress_display_credit_link'
wp option delete 'storagepress_feature_options'
wp option delete 'storagepress_default_thumbnail_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stpr_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stpr_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stpr_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stpr_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stpr_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stpr_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stpr_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stpr_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stpr_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stpr_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stpr_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stpr_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stpr_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stpr_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stpr_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stpr_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stpr_tenant'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stpr_tenant'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stpr_tenant'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stpr_tenant'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stpr_features'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stpr_features'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stpr_features'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stpr_features'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stpr_reservation_inquirer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stpr_reservation_inquirer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stpr_reservation_inquirer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stpr_reservation_inquirer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stpr_last_rental_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stpr_last_rental_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stpr_last_rental_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stpr_last_rental_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stpr_last_vacant_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stpr_last_vacant_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stpr_last_vacant_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stpr_last_vacant_date'"
