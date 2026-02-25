#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'suspend_automatic_detection_of_residential_addresses'
wp option delete 'en_woo_addons_auto_residential_detecion_flag'
wp option delete 'en_trial_residential_flag'
wp option delete 'auto_residential_delivery_plan_auto_renew'
wp option delete 'en_woo_addons_liftgate_with_auto_residential'
wp option delete 'en_default_unconfirmed_address_types_to'
wp option delete 'en_default_missing_street_address_types_to'
wp option delete 'residential_delivery_options_disclosure_types_to'
wp option delete 'eniture_not_show_rates_for_pobox_addresses'
wp option delete 'en_woo_addons_liftgate_delivery_as_option'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'en_woo_addons_auto_residential_detecion_flag_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'en_rad_addresses'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'en_rad_addresses'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'en_rad_addresses'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'en_rad_addresses'"
