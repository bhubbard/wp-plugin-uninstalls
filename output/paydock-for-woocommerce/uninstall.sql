-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_prices_include_tax');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_is_fetching_versions';
DELETE FROM wp_options WHERE option_name LIKE '%_checkout_versions';
DELETE FROM wp_options WHERE option_name LIKE '%_environment_url';
DELETE FROM wp_options WHERE option_name LIKE '%_is_fetching_configuration_templates';
DELETE FROM wp_options WHERE option_name LIKE '%_is_fetching_customisation_templates';
DELETE FROM wp_options WHERE option_name LIKE '%_template_not_available';
DELETE FROM wp_options WHERE option_name LIKE '%_selected_CONFIGURATION_ID_template_not_available';
DELETE FROM wp_options WHERE option_name LIKE '%_selected_CUSTOMISATION_ID_template_not_available';

