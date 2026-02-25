#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'replyit_widget_id'
wp option delete 'replyit_api_secret'
wp option delete 'replyit_api_url'
wp option delete 'replyit_enabled'
wp option delete 'replyit_woocommerce_enabled'
wp option delete 'replyit_blog_search_enabled'
wp option delete 'replyit_blog_content_enabled'
wp option delete 'replyit_order_tracking_enabled'
wp option delete 'replyit_cart_abandon_time'
wp option delete 'replyit_product_page_delay'
wp option delete 'replyit_checkout_help_enabled'
wp option delete 'replyit_product_search_enabled'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'replyit_domain_registered'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

