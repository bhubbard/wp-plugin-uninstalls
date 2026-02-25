#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc-paygent-mb'
wp option delete 'wc-paygent-paidy'
wp option delete 'wc-paygent-paypay'
wp option delete 'wc-paygent-rakutenpay'
wp option delete 'wc-paygent-bn'
wp option delete 'wc-paygent-atm'
wp option delete 'wc-paygent-mccc'
wp option delete 'wc-paygent-cc'
wp option delete 'wc-paygent-cs'
wp option delete 'jp4wc_card_expiry_settings'
wp option delete 'wc_paygent_options_name'
wp option delete 'wc-paygent-test-client-cert-file'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sid'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%testmode'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%hash_check'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%prefix_order'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%debug'"
wp option delete 'jp4wcoal_max_attempts'
wp option delete 'jp4wcoal_lockout_duration'
wp option delete 'jp4wcoal_cleanup_interval'
wp option delete 'wc-paygent-prefix_order'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'wc-paygent-testmode'
wp option delete 'wc-paygent-test-mid'
wp option delete 'wc-paygent-test-tokenkey'
wp option delete 'wc-paygent-mid'
wp option delete 'wc-paygent-tokenkey'
wp option delete 'wc-paygent-cid'
wp option delete 'wc-paygent-cpass'
wp option delete 'wc-paygent-test-cid'
wp option delete 'wc-paygent-test-cpass'
wp option delete 'wc-paygent-sid'
wp option delete 'wc-paygent-hash_check'
wp option delete 'wc-paygent-test-hash_code'
wp option delete 'wc-paygent-hash_code'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'wc-paygent-debug'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'paygent_ip_permission_error_sent'

# Clear Cron Jobs
wp cron event delete 'jp4wc_card_expiry_check'
wp cron event delete 'jp4wcoal_cleanup_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pay_center_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pay_center_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pay_center_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pay_center_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_conf_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_conf_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_conf_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_conf_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_limit_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_limit_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_limit_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_limit_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_last_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_last_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_last_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_last_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jp4wc_password_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jp4wc_password_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jp4wc_password_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jp4wc_password_update'"
