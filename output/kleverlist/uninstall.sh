#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kleverlist_service_settings'
wp option delete 'kleverlist_sendy_lists'
wp option delete 'kleverlist_service_type'
wp option delete 'kleverlist_sendy_brands'
wp option delete 'kleverlist_sendy_mapping_user_email_allowed'
wp option delete 'kleverlist_sendy_mapping_user_fullname'
wp option delete 'kleverlist_sendy_mapping_user_firstname'
wp option delete 'kleverlist_sendy_mapping_user_lastname'
wp option delete 'kleverlist_sendy_mapping_user_username'
wp option delete 'kleverlist_mapping_settings'
wp option delete 'kleverlist_mailchimp_apikey'
wp option delete 'kleverlist_mailchimp_apiurl'
wp option delete 'kleverlist_mailchimp_audience_lists'
wp option delete 'kleverlist_mailchimp_user_audience'
wp option delete 'klerverlist_mailchimp_migration_allow'
wp option delete 'klerverlist_aweber_migration_allow'
wp option delete 'klerverlist_sendy_migration_allow'
wp option delete 'kleverlist_aweber_tokenData'
wp option delete 'kleverlist_aweber_auth_code'
wp option delete 'kleverlist_aweber_accounts_id'
wp option delete 'kleverlist_aweber_account_lists_data'
wp option delete 'kleverlist_aweber_user_selected_account_id'
wp option delete 'kleverlist_aweber_global_account_id'
wp option delete 'kleverlist_global_sendy_list_id'
wp option delete 'kleverlist_global_resubscribe'
wp option delete 'kleverlist_sendy_global_resubscribe_order_action_option'
wp option delete 'kleverlist_sendy_global_active_all_products'
wp option delete 'kleverlist_sendy_global_active_all_order_processing_action'
wp option delete 'kleverlist_sendy_global_active_all_order_complete_action'
wp option delete 'kleverlist_mailchimp_user_email'
wp option delete 'kleverlist_mailchimp_firstname'
wp option delete 'kleverlist_mailchimp_lastname'
wp option delete 'kleverlist_mailchimp_username'
wp option delete 'kleverlist_sendy_order_processing_tag'
wp option delete 'kleverlist_sendy_order_completed_tag'
wp option delete 'kleverlist_sendy_remove_order_processing_tag'
wp option delete 'kleverlist_mailchimp_order_processing'
wp option delete 'kleverlist_mailchimp_order_completed'
wp option delete 'kleverlist_mailchimp_remove_order_processing_tag'
wp option delete 'kleverlist_mailchimp_global_audience_id'
wp option delete 'kleverlist_mailchimp_global_resubscribe'
wp option delete 'kleverlist_mailchimp_global_resubscribe_order_action_option'
wp option delete 'kleverlist_mailchimp_global_active_all_products'
wp option delete 'kleverlist_mailchimp_global_active_all_order_action'
wp option delete 'kleverlist_aweber_order_processing_tag'
wp option delete 'kleverlist_aweber_order_completed_tag'
wp option delete 'kleverlist_aweber_remove_order_processing_tag'
wp option delete 'kleverlist_aweber_global_resubscribe'
wp option delete 'kleverlist_aweber_global_resubscribe_order_action_option'
wp option delete 'kleverlist_aweber_global_active_all_products'
wp option delete 'kleverlist_aweber_global_active_all_order_action'
wp option delete 'kleverlist_aweber_user_email'
wp option delete 'kleverlist_aweber_firstname'
wp option delete 'kleverlist_aweber_lastname'
wp option delete 'kleverlist_aweber_username'
wp option delete 'kleverlist_aweber_audience_lists'
wp option delete '_klerverlist_mailchimp_order_processing_tags'
wp option delete '_klerverlist_mailchimp_order_completed_tags'
wp option delete 'kleverlist_aweber_country'
wp option delete 'kleverlist_aweber_address_line_1'
wp option delete 'kleverlist_aweber_address_line_2'
wp option delete 'kleverlist_aweber_user_town_city'
wp option delete 'kleverlist_aweber_user_province'
wp option delete 'kleverlist_aweber_user_postcode'
wp option delete 'kleverlist_aweber_user_phone'
wp option delete 'kleverlist_aweber_company_name'
wp option delete 'kleverlist_aweber_user_no_of_orders'
wp option delete 'kleverlist_aweber_user_firstpurchase'
wp option delete 'kleverlist_aweber_last_purchase_date'
wp option delete 'kleverlist_aweber_user_total_revenue'
wp option delete 'kleverlist_aweber_user_average_order_amount'
wp option delete 'kleverlist_mailchimp_country'
wp option delete 'kleverlist_mailchimp_address_line_1'
wp option delete 'kleverlist_mailchimp_address_line_2'
wp option delete 'kleverlist_mailchimp_user_town_city'
wp option delete 'kleverlist_mailchimp_user_province'
wp option delete 'kleverlist_mailchimp_user_postcode'
wp option delete 'kleverlist_mailchimp_user_phone'
wp option delete 'kleverlist_mailchimp_company_name'
wp option delete 'kleverlist_mailchimp_user_no_of_orders'
wp option delete 'kleverlist_mailchimp_first_purchase_date'
wp option delete 'kleverlist_mailchimp_last_purchase_date'
wp option delete 'kleverlist_mailchimp_user_total_revenue'
wp option delete 'kleverlist_mailchimp_user_average_order_amount'
wp option delete 'kleverlist_sendy_mapping_user_country'
wp option delete 'kleverlist_sendy_mapping_user_address_line_1'
wp option delete 'kleverlist_sendy_mapping_user_address_line_2'
wp option delete 'kleverlist_sendy_mapping_user_town_city'
wp option delete 'kleverlist_sendy_mapping_user_province_county_district'
wp option delete 'kleverlist_sendy_mapping_user_postcode'
wp option delete 'kleverlist_sendy_mapping_user_phone'
wp option delete 'kleverlist_sendy_mapping_user_company_name'
wp option delete 'kleverlist_sendy_mapping_user_no_of_orders'
wp option delete 'kleverlist_sendy_mapping_firstpurchase'
wp option delete 'kleverlist_sendy_mapping_user_purchase_date'
wp option delete 'kleverlist_sendy_mapping_user_total_revenue'
wp option delete 'kleverlist_sendy_mapping_user_average_order_amount'
wp option delete 'kleverlist_aweber_global_checkout_privacy_consent'
wp option delete 'kleverlist_aweber_global_privacy_radio_option'
wp option delete 'klerverlist_aweber_product_tag_allow'
wp option delete 'kleverlist_mailchimp_global_checkout_privacy_consent'
wp option delete 'kleverlist_mailchimp_global_privacy_radio_option'
wp option delete 'klerverlist_mailchimp_product_tag_allow'
wp option delete 'kleverlist_global_checkout_privacy_consent'
wp option delete 'kleverlist_global_privacy_radio_option'
wp option delete 'klerverlist_sendy_product_tag_allow'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_processing_special_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_processing_special_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_processing_special_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_processing_special_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_processing_special_product_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_processing_special_product_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_processing_special_product_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_processing_special_product_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_special_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_special_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_special_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_special_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_special_product_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_special_product_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_special_product_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_special_product_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_processing_unsubscribe_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_processing_unsubscribe_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_processing_unsubscribe_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_processing_unsubscribe_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_processing_unsubscribe_product_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_processing_unsubscribe_product_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_processing_unsubscribe_product_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_processing_unsubscribe_product_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_unsubscribe_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_unsubscribe_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_unsubscribe_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_unsubscribe_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_unsubscribe_product_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_unsubscribe_product_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_unsubscribe_product_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_unsubscribe_product_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_processing_mc_special_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_processing_mc_special_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_processing_mc_special_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_processing_mc_special_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_processing_mc_special_product_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_processing_mc_special_product_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_processing_mc_special_product_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_processing_mc_special_product_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_completed_mc_special_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_completed_mc_special_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_completed_mc_special_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_completed_mc_special_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_completed_mc_special_product_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_completed_mc_special_product_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_completed_mc_special_product_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_completed_mc_special_product_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_processing_aweber_special_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_processing_aweber_special_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_processing_aweber_special_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_processing_aweber_special_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_processing_aweber_special_product_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_processing_aweber_special_product_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_processing_aweber_special_product_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_processing_aweber_special_product_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_completed_aweber_special_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_completed_aweber_special_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_completed_aweber_special_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_completed_aweber_special_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_completed_aweber_special_product_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_completed_aweber_special_product_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_completed_aweber_special_product_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_completed_aweber_special_product_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aweber_code_verifier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aweber_code_verifier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aweber_code_verifier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aweber_code_verifier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kleverlist_aweber_order_processing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kleverlist_aweber_order_processing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kleverlist_aweber_order_processing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kleverlist_aweber_order_processing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kleverlist_aweber_order_completed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kleverlist_aweber_order_completed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kleverlist_aweber_order_completed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kleverlist_aweber_order_completed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kleverlist_mailchimp_privacy_checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kleverlist_mailchimp_privacy_checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kleverlist_mailchimp_privacy_checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kleverlist_mailchimp_privacy_checkbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kleverlist_mc_order_processing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kleverlist_mc_order_processing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kleverlist_mc_order_processing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kleverlist_mc_order_processing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kleverlist_mc_order_completed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kleverlist_mc_order_completed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kleverlist_mc_order_completed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kleverlist_mc_order_completed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kleverlist_order_processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kleverlist_order_processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kleverlist_order_processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kleverlist_order_processed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_klerverlist_sendy_all_processing_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_klerverlist_sendy_all_processing_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_klerverlist_sendy_all_processing_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_klerverlist_sendy_all_processing_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kleverlist_order_completed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kleverlist_order_completed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kleverlist_order_completed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kleverlist_order_completed'"
