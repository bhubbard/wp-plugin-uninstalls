#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_smaily_widget'
wp option delete 'smailyforwc_db_version'

# Delete Transients
wp transient delete 'smaily_woocommerce_upgrade_1_4_0_notice'
wp transient delete 'smaily_woocommerce_upgrade_1_5_0_notice'
wp transient delete 'smailyforwc_plugin_updated'

# Clear Cron Jobs
wp cron event delete 'smaily_cron_sync_contacts'
wp cron event delete 'smaily_cron_abandoned_carts_status'
wp cron event delete 'smaily_cron_abandoned_carts_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_newsletter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_newsletter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_newsletter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_newsletter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smaily_for_woocommerce_deprecation_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smaily_for_woocommerce_deprecation_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smaily_for_woocommerce_deprecation_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smaily_for_woocommerce_deprecation_notice_dismissed'"
