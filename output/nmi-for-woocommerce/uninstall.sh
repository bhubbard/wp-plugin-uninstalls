#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_force_ssl_checkout'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'NMI Subscriber ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'NMI Subscriber ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'NMI Subscriber ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'NMI Subscriber ID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nmi_cc_token_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nmi_cc_token_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nmi_cc_token_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nmi_cc_token_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'NMI 3DS Response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'NMI 3DS Response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'NMI 3DS Response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'NMI 3DS Response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'NMI Transaction ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'NMI Transaction ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'NMI Transaction ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'NMI Transaction ID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'AVS Response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'AVS Response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'AVS Response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'AVS Response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'CVV Response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'CVV Response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'CVV Response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'CVV Response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'NMI Response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'NMI Response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'NMI Response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'NMI Response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nmi_check_token_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nmi_check_token_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nmi_check_token_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nmi_check_token_id'"
