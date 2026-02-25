#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'woocommerce_stripe_settings'
wp option delete 'stripe_test_api_public_key'
wp option delete 'stripe_test_api_secret_key'
wp option delete 'stripe_api_public_key'
wp option delete 'stripe_api_secret_key'
wp option delete 'spp_setting_redirect'
wp option delete 'bsd_log_table_created'
wp option delete 'spp_account_id_table'
wp option delete 'bsd_connected_id_table_created'
wp option delete 'transfer_email'
wp option delete 'spp_keys_copied'
wp option delete 'sps_test_webhook_update'
wp option delete 'sps_webhook_update'
wp option delete 'bsd_split_pay_stripe_connect_woo_stripe_connected_account'
wp option delete 'bsd_spscwt_type'
wp option delete 'bsd_split_pay_stripe_connect_woo_transfer_percentage'
wp option delete 'bsd_spscwt_amount'
wp option delete 'sending_meta'
wp option delete 'transfer_taxes'
wp option delete 'tax_transfer_type'
wp option delete 'vendor_onboading'
wp option delete 'enable_title_description'
wp option delete 'onboarding_title'
wp option delete 'onboarding_description'
wp option delete 'last_fetched_account'
wp option delete 'is_all_sca_fetched'
wp option delete 'bsd_stripe_account_tbl_ver'
wp option delete 'transfer_percentage'
wp option delete 'bsd_split_pay_stripe_connect_woo_back_end'
wp option delete 'bsd_wc_scsp_db_version'
wp option delete 'bsd_wc_scsp_stripe_connected_account'
wp option delete 'bsd_wc_scsp_transfer_percentage'
wp option delete 'bsd_wc_scsp_exclude_shipping'
wp option delete 'bsd_wc_scsp_exclude_tax'
wp option delete 'bsd_split_pay_stripe_connect_woo_exclude_shipping'
wp option delete 'bsd_split_pay_stripe_connect_woo_exclude_tax'
wp option delete 'bsd_trnsfr_shpng_fees'
wp option delete 'bsd_migration'
wp option delete 'bsd_last_page'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'ob_failed'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bsd_spscwt_product_connected_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bsd_spscwt_product_connected_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bsd_spscwt_product_connected_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bsd_spscwt_product_connected_account'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bsd_spscwt_product_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bsd_spscwt_product_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bsd_spscwt_product_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bsd_spscwt_product_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stripe_connect_split_pay_transfer_percentage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stripe_connect_split_pay_transfer_percentage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stripe_connect_split_pay_transfer_percentage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stripe_connect_split_pay_transfer_percentage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bsd_spscwt_product_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bsd_spscwt_product_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bsd_spscwt_product_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bsd_spscwt_product_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bsd_spscwt_shipping_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bsd_spscwt_shipping_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bsd_spscwt_shipping_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bsd_spscwt_shipping_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bsd_prod_shipping_percentage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bsd_prod_shipping_percentage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bsd_prod_shipping_percentage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bsd_prod_shipping_percentage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bsd_spscwt_shipping_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bsd_spscwt_shipping_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bsd_spscwt_shipping_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bsd_spscwt_shipping_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bsd_prod_shipping_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bsd_prod_shipping_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bsd_prod_shipping_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bsd_prod_shipping_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_register_vendor_split_pay_plugin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_register_vendor_split_pay_plugin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_register_vendor_split_pay_plugin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_register_vendor_split_pay_plugin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'account_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'account_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'account_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'account_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_onboard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_onboard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_onboard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_onboard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'failed_account_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'failed_account_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'failed_account_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'failed_account_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bsd_spscwt_product_type_ko'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bsd_spscwt_product_type_ko'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bsd_spscwt_product_type_ko'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bsd_spscwt_product_type_ko'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stripe_connect_split_pay_transfer_percentage_ko'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stripe_connect_split_pay_transfer_percentage_ko'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stripe_connect_split_pay_transfer_percentage_ko'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stripe_connect_split_pay_transfer_percentage_ko'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bsd_spscwt_product_amount_ko'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bsd_spscwt_product_amount_ko'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bsd_spscwt_product_amount_ko'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bsd_spscwt_product_amount_ko'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_transfer_process_done'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_transfer_process_done'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_transfer_process_done'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_transfer_process_done'"
