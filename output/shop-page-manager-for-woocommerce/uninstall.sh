#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%visual_customizer'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ruleset_toggle'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%cron_log'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_license_key'"
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'woocommerce_shop_page_display'
wp option delete 'woocommerce_category_archive_display'
wp option delete 'woocommerce_default_catalog_orderby'
wp option delete 'woocommerce_catalog_columns'
wp option delete 'woo_shop_manager_api_get_response'
wp option delete 'wp_zamartz_admin_event_tracker'
wp option delete 'zamartz_api_admin_notice_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_password'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_product_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_purchase_emails'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_get_response'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_admin_notice_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%network_admin_api_status'"
wp option delete 'active_sitewide_plugins'

# Clear Cron Jobs
wp cron event delete 'zamartz_api_cron_schedule_twice_monthly'

