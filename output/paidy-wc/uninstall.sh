#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_paidy_show_ssl_notice'
wp option delete 'wc_paidy_show_curl_notice'
wp option delete 'woocommerce_paidy_settings'
wp option delete 'wc_paidy_show_pr_notice'
wp option delete 'wc-paygent-paidy'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_paidy_on_boarding_settings'
wp option delete 'paidy_site_hash'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_%'"
wp option delete 'wc_paidy_apply_notice_2'
wp option delete 'wc_paidy_apply_notice_3'
wp option delete 'wc_paidy_apply_notice_99'
wp option delete 'paidy_received_data'
wp option delete 'received_data'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'paidy_do_activation_redirect'

