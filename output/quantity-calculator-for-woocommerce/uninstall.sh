#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'eniture_quantity_calculator_settings_app_block_options'
wp option delete 'eniture_quantity_calculator_status'
wp option delete 'eniture_quantity_calculator_last_date_check'
wp option delete 'eniture_quantity_calculator_coverage_input_size'
wp option delete 'eniture_quantity_calculator_settings_cart_input_size'
wp option delete 'eniture_quantity_calculator_settings_license_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eniture_enable_quantity_calculator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eniture_enable_quantity_calculator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eniture_enable_quantity_calculator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eniture_enable_quantity_calculator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eniture_quantity_per_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eniture_quantity_per_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eniture_quantity_per_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eniture_quantity_per_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eniture_minimum_square_feet_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eniture_minimum_square_feet_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eniture_minimum_square_feet_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eniture_minimum_square_feet_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eniture_maximum_square_feet_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eniture_maximum_square_feet_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eniture_maximum_square_feet_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eniture_maximum_square_feet_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eniture_unit_measurement_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eniture_unit_measurement_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eniture_unit_measurement_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eniture_unit_measurement_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eniture_message_for_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eniture_message_for_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eniture_message_for_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eniture_message_for_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eniture_coverage_input_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eniture_coverage_input_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eniture_coverage_input_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eniture_coverage_input_label'"
