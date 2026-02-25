#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'carticy_ai_checkout_test_mode'
wp option delete 'carticy_ai_checkout_delete_data_on_uninstall'
wp option delete 'carticy_ai_checkout_webhook_url'
wp option delete 'carticy_ai_checkout_enable_ip_allowlist'
wp option delete 'carticy_ai_checkout_openai_ip_ranges_backup'
wp option delete 'carticy_ai_checkout_api_key'
wp option delete 'carticy_ai_checkout_webhook_secret'
wp option delete 'carticy_ai_checkout_test_webhook_url'
wp option delete 'carticy_ai_checkout_enable_openai_robots'
wp option delete 'carticy_ai_checkout_feed_last_updated'
wp option delete 'woocommerce_shipping_tax_class'
wp option delete 'carticy_ai_checkout_application_data'
wp option delete 'woocommerce_stripe_settings'
wp option delete 'carticy_ai_checkout_rate_limit_enabled'
wp option delete 'carticy_ai_checkout_admin_notices'
wp option delete 'woocommerce_weight_unit'
wp option delete 'carticy_ai_checkout_test_bypass_ip'
wp option delete 'carticy_ai_checkout_webhook_retry_queue'
wp option delete 'carticy_ai_checkout_openai_ip_ranges_last_updated'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_carticy_ai_checkout_wizard_errors_%' OR option_name LIKE '_site_transient_carticy_ai_checkout_wizard_errors_%'"
wp transient delete 'settings_errors'
wp transient delete 'carticy_ai_checkout_wizard_test_results'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_carticy_ai_checkout_spt_%' OR option_name LIKE '_site_transient_carticy_ai_checkout_spt_%'"
wp transient delete 'carticy_ai_checkout_openai_ip_ranges'
wp transient delete 'carticy_ai_checkout_test_product_sku'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%json' OR option_name LIKE '_site_transient_%json'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%csv' OR option_name LIKE '_site_transient_%csv'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%xml' OR option_name LIKE '_site_transient_%xml'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%tsv' OR option_name LIKE '_site_transient_%tsv'"
wp transient delete 'carticy_ai_checkout_conformance_test_results'
wp transient delete 'carticy_ai_checkout_mock_scenario_results'
wp transient delete 'carticy_ai_checkout_testing_redirect'

# Clear Cron Jobs
wp cron event delete 'carticy_ai_checkout_refresh_product_feed'
wp cron event delete 'carticy_ai_checkout_cleanup_sessions'
wp cron event delete 'carticy_ai_checkout_update_openai_ips'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_carticy_ai_checkout_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_carticy_ai_checkout_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_carticy_ai_checkout_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_carticy_ai_checkout_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_carticy_ai_checkout_quality_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_carticy_ai_checkout_quality_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_carticy_ai_checkout_quality_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_carticy_ai_checkout_quality_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_carticy_ai_checkout_quality_issues'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_carticy_ai_checkout_quality_issues'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_carticy_ai_checkout_quality_issues'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_carticy_ai_checkout_quality_issues'"
