#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cisl_trust_badges_enabled'
wp option delete 'cisl_badges_title'
wp option delete 'cisl_badge_cards'
wp option delete 'cisl_badge_paypal'
wp option delete 'cisl_badge_ssl'
wp option delete 'cisl_badge_guarantee'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%privacy_policy_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%terms_conditions_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%skip_cart_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%trust_badges_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%badges_title'"
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%admin_notice' OR option_name LIKE '_site_transient_%admin_notice'"
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

