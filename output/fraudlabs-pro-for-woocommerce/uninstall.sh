#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_settings_woocommerce-fraudlabs-pro_flp_advanced_velocity'
wp option delete 'woocommerce_downloads_grant_access_after_payment'
wp option delete 'wc_settings_woocommerce-fraudlabs-pro_reject_failed_order'
wp option delete 'wc_settings_woocommerce-fraudlabs-pro_debug_log_path'
wp option delete 'wc_settings_woocommerce-fraudlabs-pro_expand_report'
wp option delete 'wc_settings_woocommerce-fraudlabs-pro_change_status_auto'
wp option delete 'wc_settings_woocommerce-fraudlabs-pro_enabled'
wp option delete 'wc_settings_woocommerce-fraudlabs-pro_api_key'
wp option delete 'wc_settings_woocommerce-fraudlabs-pro_debug_log'
wp option delete 'wc_settings_woocommerce-fraudlabs-pro_approve_status'
wp option delete 'wc_settings_woocommerce-fraudlabs-pro_review_status'
wp option delete 'wc_settings_woocommerce-fraudlabs-pro_reject_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_settings_woocommerce-fraudlabs-pro_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fraudlabspro_ip_before'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fraudlabspro_ip_before'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fraudlabspro_ip_before'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fraudlabspro_ip_before'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fraudlabspro'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fraudlabspro'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fraudlabspro'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fraudlabspro'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_flp_bin_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_flp_bin_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_flp_bin_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_flp_bin_no'"
