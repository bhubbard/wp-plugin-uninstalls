#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xoo-wl-list-view'
wp option delete 'xoo_wl_cron_working'
wp option delete 'xoo-wl-gl-enqty'
wp option delete 'xoo-wl-import-started-notice'
wp option delete 'xoo-wl-import-in-progress'
wp option delete 'xoo-wl-import-success'
wp option delete 'xoo_wl_crons_in_queue'
wp option delete 'xoo-wl-schedule-crons'
wp option delete 'xoo_wl_cron_emails'
wp option delete 'xoo-wl-cron-cleanup-last-check'
wp option delete 'xoo-wl-version'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'xoo_tracking_consent_waitlist-woocommerce'
wp option delete 'xoo-wl-general-options'
wp option delete 'xoo-wl-email-options'
wp option delete 'xoo-wl-style-options'
wp option delete 'xoo_wl_cron_test_count'
wp option delete 'xoo-wl-gl-enguest'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'xoo_tracking_consent_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'xoo_plugin_deactivated_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_theme_templates_data'"
wp option delete 'woocommerce_myaccount_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

# Clear Cron Jobs
wp cron event delete 'xoo_wl_cron_send_back_in_stock_email_for_product'
wp cron event delete 'xoo_wl_cron_fetch_old_waitlist'
wp cron event delete 'xoo_wl_test_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xoo_waitlist_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xoo_waitlist_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xoo_waitlist_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xoo_waitlist_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xoo_waitlist_force_show'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xoo_waitlist_force_show'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xoo_waitlist_force_show'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xoo_waitlist_force_show'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xoo-wl-users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xoo-wl-users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xoo-wl-users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xoo-wl-users'"
