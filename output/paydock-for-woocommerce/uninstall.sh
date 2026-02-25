#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_prices_include_tax'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_is_fetching_versions' OR option_name LIKE '_site_transient_%_is_fetching_versions'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_checkout_versions' OR option_name LIKE '_site_transient_%_checkout_versions'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_environment_url' OR option_name LIKE '_site_transient_%_environment_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_is_fetching_configuration_templates' OR option_name LIKE '_site_transient_%_is_fetching_configuration_templates'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_is_fetching_customisation_templates' OR option_name LIKE '_site_transient_%_is_fetching_customisation_templates'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_template_not_available' OR option_name LIKE '_site_transient_%_template_not_available'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_selected_CONFIGURATION_ID_template_not_available' OR option_name LIKE '_site_transient_%_selected_CONFIGURATION_ID_template_not_available'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_selected_CUSTOMISATION_ID_template_not_available' OR option_name LIKE '_site_transient_%_selected_CUSTOMISATION_ID_template_not_available'"

