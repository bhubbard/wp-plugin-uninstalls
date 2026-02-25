#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'wfcm_last-scan-timestamp'
wp option delete '_bbp_default_role'
wp option delete '_bbp_allow_anonymous'
wp option delete '_bbp_edit_lock'
wp option delete '_bbp_throttle_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_%'"
wp option delete ' woocommerce_currency'
wp option delete ' woocommerce_cart_page_id'
wp option delete 'classic-editor-replace'
wp option delete 'classic-editor-allow-users'
wp option delete 'nav_menu_options'
wp option delete 'allowedthemes'
wp option delete 'sidebars_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"

# Delete Transients
wp transient delete 'wsal_deactivate_plugins'
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'wsal_log_events_ext_db'
wp cron event delete 'wsal_cleanup_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_forum_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_forum_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_forum_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_forum_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_sticky_topics'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_sticky_topics'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_sticky_topics'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_sticky_topics'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_2fa_enabled_methods'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_2fa_enabled_methods'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_2fa_enabled_methods'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_2fa_enabled_methods'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_application_passwords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_application_passwords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_application_passwords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_application_passwords'"
