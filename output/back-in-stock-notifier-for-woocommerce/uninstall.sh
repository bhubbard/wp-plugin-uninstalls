#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cwginstocksettings'
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_email_from_name'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'cwginstock_imail_settings'
wp option delete 'cwginstock_backend_ui'
wp option delete 'cwginstock_test_email_status'
wp option delete 'cwginstock_iagree_settings'
wp option delete 'cwg_data_upgraded'

# Delete Transients
wp transient delete 'cwginstock_esta'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwginstock_bypass_pid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwginstock_bypass_pid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwginstock_bypass_pid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwginstock_bypass_pid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwginstock_pid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwginstock_pid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwginstock_pid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwginstock_pid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwginstock_subscriber_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwginstock_subscriber_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwginstock_subscriber_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwginstock_subscriber_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwginstock_mail_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwginstock_mail_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwginstock_mail_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwginstock_mail_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwginstock_subscriber_personal_data_deleted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwginstock_subscriber_personal_data_deleted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwginstock_subscriber_personal_data_deleted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwginstock_subscriber_personal_data_deleted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwg_total_subscribers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwg_total_subscribers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwg_total_subscribers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwg_total_subscribers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'cwginstock_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'cwginstock_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'cwginstock_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cwginstock_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwginstock_bypass_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwginstock_bypass_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwginstock_bypass_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwginstock_bypass_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwginstock_subscriber_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwginstock_subscriber_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwginstock_subscriber_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwginstock_subscriber_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwginstock_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwginstock_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwginstock_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwginstock_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwginstock_subscriber_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwginstock_subscriber_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwginstock_subscriber_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwginstock_subscriber_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwginstock_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwginstock_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwginstock_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwginstock_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwginstock_variation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwginstock_variation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwginstock_variation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwginstock_variation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwginstock_custom_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwginstock_custom_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwginstock_custom_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwginstock_custom_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwginstock_created_via'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwginstock_created_via'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwginstock_created_via'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwginstock_created_via'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwg_product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwg_product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwg_product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwg_product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwg_eta_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwg_eta_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwg_eta_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwg_eta_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwg_stock_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwg_stock_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwg_stock_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwg_stock_message'"
