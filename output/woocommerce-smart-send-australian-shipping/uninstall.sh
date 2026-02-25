#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_credentials_validated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_removed'"
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_config_urls_exists'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_vip_username'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_vip_password'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_test_mode'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_admin_install_timestamp'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_secret_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_secret_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_installation_created'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_installation_updated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_process_admin_options'"
wp option delete 'woocommerce_ship_to_destination'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_australian_timezones'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_admin_install_config'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tenant_uid'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_access_token'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_access_token' OR option_name LIKE '_site_transient_%_access_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_processing' OR option_name LIKE '_site_transient_%_processing'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_settings' OR option_name LIKE '_site_transient_%_settings'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_shipping_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_shipping_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_shipping_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_shipping_options'"
