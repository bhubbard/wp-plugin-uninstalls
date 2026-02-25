#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_default_log_handler'
wp option delete 'woocommerce_pos_uuid'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_notify_no_stock_amount'
wp option delete 'woocommerce_pos_secret_key'
wp option delete 'woocommerce_pos_refresh_secret_key'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%general'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%checkout'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%tools'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%payment_gateways'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%visibility'"
wp option delete 'woocommerce_pos_db_version'
wp option delete 'wcpos_template_validation_logs'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcpos_active_template_%'"
wp option delete 'wcpos_active_template_receipt'
wp option delete 'woocommerce_tax_total_display'

# Delete Transients
wp transient delete 'woocommerce_pos_pro_license_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wcpos_auth_fail_%' OR option_name LIKE '_site_transient_wcpos_auth_fail_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wcpos_auth_lock_%' OR option_name LIKE '_site_transient_wcpos_auth_lock_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcpos_seen_extension_slugs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcpos_seen_extension_slugs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcpos_seen_extension_slugs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcpos_seen_extension_slugs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocommerce_pos_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocommerce_pos_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocommerce_pos_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocommerce_pos_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_template_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_template_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_template_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_template_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pos_cash_amount_tendered'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pos_cash_amount_tendered'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pos_cash_amount_tendered'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pos_cash_amount_tendered'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pos_cash_change'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pos_cash_change'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pos_cash_change'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pos_cash_change'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocommerce_pos_refresh_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocommerce_pos_refresh_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocommerce_pos_refresh_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocommerce_pos_refresh_tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocommerce_pos_last_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocommerce_pos_last_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocommerce_pos_last_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocommerce_pos_last_access'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_template_file_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_template_file_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_template_file_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_template_file_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_shipping_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_shipping_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_shipping_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_shipping_tax'"
