#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smaily_connect_flush_rewrite_rules'
wp option delete 'wpcf7'

# Delete Transients
wp transient delete 'smaily_connect_plugin_updated'
wp transient delete 'smaily_connect_cart_updated'

# Clear Cron Jobs
wp cron event delete 'smaily_connect_cron_sync_subscribers'
wp cron event delete 'smaily_connect_cron_abandoned_carts_status'
wp cron event delete 'smaily_connect_cron_abandoned_carts_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smaily_connect_user_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smaily_connect_user_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smaily_connect_user_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smaily_connect_user_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icl_admin_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icl_admin_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icl_admin_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icl_admin_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smaily_connect_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smaily_connect_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smaily_connect_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smaily_connect_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_newsletter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_newsletter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_newsletter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_newsletter'"
