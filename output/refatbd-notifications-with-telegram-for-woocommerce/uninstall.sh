#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rntfw_settings'
wp option delete 'rntfw_site_registered'
wp option delete 'rntfw_site_secret'
wp option delete 'woocommerce_notify_low_stock_amount'

# Delete Transients
wp transient delete 'rntfw_limit_reached_notice'
wp transient delete 'rntfw_bot_info'
wp transient delete 'rntfw_site_reg_status'
wp transient delete 'rntfw_limit_upgrade_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rntfw_old_product_price_%' OR option_name LIKE '_site_transient_rntfw_old_product_price_%'"

# Clear Cron Jobs
wp cron event delete 'rntfw_scheduled_sms_cron'
wp cron event delete 'rntfw_daily_cleanup_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'rntfw_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'rntfw_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'rntfw_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rntfw_dismissed_notice_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
