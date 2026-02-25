#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'megasend_woo_tracking_enabled'
wp option delete 'megasend_woo_abandonment_threshold'
wp option delete 'megasend_woo_onboarding_completed'
wp option delete 'megasend_woo_instance_id'
wp option delete 'megasend_woo_api_token'
wp option delete 'megasend_woo_gdpr_enabled'
wp option delete 'megasend_woo_gdpr_message'
wp option delete 'megasend_woo_delete_data_on_uninstall'
wp option delete 'megasend_woo_default_language'
wp option delete 'megasend_woo_db_version'
wp option delete 'megasend_woo_default_country_code'
wp option delete 'woocommerce_default_country'

# Delete Transients
wp transient delete 'megasend_woo_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_megasend_woo_templates_%' OR option_name LIKE '_site_transient_megasend_woo_templates_%'"

