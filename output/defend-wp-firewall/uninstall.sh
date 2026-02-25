#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_update_plugins'
wp option delete 'ms_files_rewriting'

# Delete Transients
wp transient delete 'defend_wp_firewall_setting_redirect_on_activation'
wp transient delete 'defend_wp_firewall_error_notice'
wp transient delete 'update_plugins'
wp transient delete 'defend_wp_firewall_defendwp_pro_not_min_version'

# Clear Cron Jobs
wp cron event delete 'defend_wp_firewall_daily_auto_update'
wp cron event delete 'defend_wp_firewall_index_write'
wp cron event delete 'defend_wp_firewall_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dwp_iwp_auto_login_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dwp_iwp_auto_login_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dwp_iwp_auto_login_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dwp_iwp_auto_login_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rsssl_two_factor_nonce'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rsssl_two_factor_nonce'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rsssl_two_factor_nonce'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rsssl_two_factor_nonce'"
