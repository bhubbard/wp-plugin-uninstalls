#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alg_wc_gateways_by_location_force_js_checkout_update'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%section_enabled'"
wp option delete 'alg_wc_gateways_by_location_version'
wp option delete 'alg_wc_gateways_by_location_country_type'
wp option delete 'alg_wc_gateways_by_location_state_type'
wp option delete 'alg_wc_gateways_by_location_cities_type'
wp option delete 'alg_wc_gateways_by_location_postcodes_type'
wp option delete 'woocommerce_default_country'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'active_sitewide_plugins'

