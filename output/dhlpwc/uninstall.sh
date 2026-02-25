#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_dhlpwc_settings'
wp option delete 'woocommerce_dhlpwc_switch_loading'
wp option delete 'woocommerce_pr_dhl_dp_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dhlpwc_bulk_download_%' OR option_name LIKE '_site_transient_dhlpwc_bulk_download_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dhlpwc_connector_cache_%' OR option_name LIKE '_site_transient_dhlpwc_connector_cache_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dhlpwc_debug_mail_cache_%' OR option_name LIKE '_site_transient_dhlpwc_debug_mail_cache_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dhlpwc_postcode_validation_%' OR option_name LIKE '_site_transient_dhlpwc_postcode_validation_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dhlpwc_postcode_validation%' OR option_name LIKE '_site_transient_dhlpwc_postcode_validation%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dhlpwc_send_with_bp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dhlpwc_send_with_bp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dhlpwc_send_with_bp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dhlpwc_send_with_bp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dhlpwc_send_with_bp_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dhlpwc_send_with_bp_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dhlpwc_send_with_bp_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dhlpwc_send_with_bp_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dhlpwc_send_with_bp_mix'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dhlpwc_send_with_bp_mix'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dhlpwc_send_with_bp_mix'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dhlpwc_send_with_bp_mix'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dhlpwc_enable_method_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dhlpwc_enable_method_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dhlpwc_enable_method_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dhlpwc_enable_method_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dhlpwc_selected_method_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dhlpwc_selected_method_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dhlpwc_selected_method_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dhlpwc_selected_method_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dhlpwc_additional_shipping_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dhlpwc_additional_shipping_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dhlpwc_additional_shipping_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dhlpwc_additional_shipping_fee'"
