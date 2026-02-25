#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_wc_tp_cardsv3_settings'
wp option delete 'wc_totalprocessing_applepay_permalinks_flushed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'checkout_used_%'"
wp option delete 'applepayDomainRegStatus'
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_email_from_name'
wp option delete 'applepayDomainRegStatusHash'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%gateway_cardsv2_iframe'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_token_removal_log_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%gateway_cardsv2_e2e'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%gateway_cardsv2_cbk'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%gateway_cardsv2_iframe_url'"
wp option delete 'wc_totalprocessing_applepay_merchantIdentifier'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%synced_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%gateway_settings_sync'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_checkout_used_%' OR option_name LIKE '_site_transient_checkout_used_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tp_applepay_checkout_%' OR option_name LIKE '_site_transient_tp_applepay_checkout_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_checkout_%' OR option_name LIKE '_site_transient_checkout_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_applepay_cart_%' OR option_name LIKE '_site_transient_applepay_cart_%'"

# Clear Cron Jobs
wp cron event delete 'tp_applepay_cleanup_stale_data'
wp cron event delete 'tpob_check_next_scheduled'
wp cron event delete 'tp_gateway_logs_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_applepay_checkout_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_applepay_checkout_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_applepay_checkout_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_applepay_checkout_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_applepay_checkout_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_applepay_checkout_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_applepay_checkout_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_applepay_checkout_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
