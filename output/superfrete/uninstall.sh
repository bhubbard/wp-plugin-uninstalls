#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'superfrete_debug_mode'
wp option delete 'superfrete_sandbox_mode'
wp option delete 'superfrete_api_token_sandbox'
wp option delete 'superfrete_api_token'
wp option delete 'superfrete_proxy_url'
wp option delete 'superfrete_force_proxy'
wp option delete 'superfrete_webhook_secret'
wp option delete 'superfrete_webhook_registered'
wp option delete 'superfrete_webhook_url'
wp option delete 'superfrete_webhook_id'
wp option delete 'woocommerce_store_postcode'
wp option delete 'superfrete_plugin_version'
wp option delete 'superfrete_shipping_migrated'
wp option delete 'superfrete_individual_methods_migrated'
wp option delete 'superfrete_custom_css_vars'
wp option delete 'superfrete-calculator-setting'
wp option delete 'superfrete_webhook_migrated'
wp option delete 'superfrete_enable_calculator'
wp option delete 'superfrete_open_drawer_button_text'
wp option delete 'superfrete_update_button_text'
wp option delete 'superfrete_no_address_added_yet'
wp option delete 'superfrete_no_shipping_methods_msg'
wp option delete 'superfrete_auto_calculation'
wp option delete 'superfrete_no_rates_message'
wp option delete 'superfrete_free_shipping_price'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_name'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_number'
wp option delete 'woocommerce_store_neighborhood'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'superfrete_webhook_table_version'

# Delete Transients
wp transient delete 'superfrete_migration_running'

# Clear Cron Jobs
wp cron event delete 'superfrete_clear_log_event'
wp cron event delete 'superfrete_process_webhook_retries'

