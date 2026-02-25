#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'amdsp_auto_fix_backup_%'"
wp option delete 'amdsp_auto_fixed_settings'
wp option delete 'amdsp_auto_fix_type'
wp option delete 'amdsp_settings'
wp option delete 'amdsp_wc_fields'
wp option delete 'amdsp_shipping_rules'
wp option delete 'amdsp_auth_token'
wp option delete 'amdsp_user_data'
wp option delete 'amdsp_token_expires_at'
wp option delete 'amdsp_refresh_token'
wp option delete 'amdsp_auth_mobile'
wp option delete 'amdsp_block_other_city_scripts'
wp option delete 'amdsp_version'
wp option delete 'amdsp_install_cities'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'amdsp_%'"
wp option delete 'woocommerce_dimension_unit'
wp option delete 'amdsp_delete_data_on_uninstall'
wp option delete 'amd_version'
wp option delete 'amdsp_wizard_completed'
wp option delete 'woocommerce_weight_unit'

# Delete Transients
wp transient delete 'amdsp_admin_installing'
wp transient delete 'amdsp_shipping_method_check'
wp transient delete 'amdsp_provinces'
wp transient delete 'amdsp_cities'
wp transient delete 'amdsp_admin_updating'

