#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_weight_unit'
wp option delete 'multiparcels_settings'
wp option delete 'multiparcels_sender_details'
wp option delete 'multiparcels_address_autocomplete'
wp option delete 'multiparcels_carrier_logos'
wp option delete 'multiparcels_checkout'
wp option delete 'multiparcels_automatic_confirmation'
wp option delete 'woocommerce_paysera_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'multiparcels_extra_cities%'"

# Clear Cron Jobs
wp cron event delete 'multiparcels_update_data_cron'
wp cron event delete 'multiparcels_automatic_confirmation_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'multiparcels_does_not_fit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'multiparcels_does_not_fit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'multiparcels_does_not_fit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'multiparcels_does_not_fit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'multiparcels_external_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'multiparcels_external_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'multiparcels_external_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'multiparcels_external_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'multiparcels_location_identifier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'multiparcels_location_identifier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'multiparcels_location_identifier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'multiparcels_location_identifier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'multiparcels_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'multiparcels_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'multiparcels_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'multiparcels_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'multiparcels_hs_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'multiparcels_hs_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'multiparcels_hs_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'multiparcels_hs_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'multiparcels_location_identifier_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'multiparcels_location_identifier_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'multiparcels_location_identifier_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'multiparcels_location_identifier_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'multiparcels_cod'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'multiparcels_cod'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'multiparcels_cod'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'multiparcels_cod'"
