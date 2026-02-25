#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'usces'
wp option delete 'usces_available_settlement'
wp option delete 'usces_noreceipt_status'
wp option delete 'usces_settlement_selected'
wp option delete 'usces_payment_structure'
wp option delete 'usces_wcid'
wp option delete 'usces_payment_method'
wp option delete 'usces_paidy_application'
wp option delete 'usces_memberlist_option'
wp option delete 'usces_orderlist_option'
wp option delete 'usces_order_mail_print_fields'
wp option delete 'usces_welcartpay_keys'
wp option delete 'usces_management_status'
wp option delete 'usces_ex'
wp option delete 'usces_cart_number'
wp option delete 'usces_member_number'
wp option delete 'usces_item_cat_parent_id'
wp option delete 'usces_zaiko_status'
wp option delete 'usces_customer_status'
wp option delete 'usces_display_mode'
wp option delete 'usces_settlement_notice'
wp option delete 'usces_mail_othermail'
wp option delete 'usces_mail_thankyou'
wp option delete 'usces_mail_order'
wp option delete 'usces_mail_inquiry'
wp option delete 'usces_mail_membercomp'
wp option delete 'usces_mail_completionmail'
wp option delete 'usces_mail_ordermail'
wp option delete 'usces_mail_changemail'
wp option delete 'usces_mail_receiptmail'
wp option delete 'usces_mail_mitumorimail'
wp option delete 'usces_mail_cancelmail'
wp option delete 'usces_unavailable_settlement'
wp option delete 'usces_shipping_rule'
wp option delete 'usces_recaptcha_condition'
wp option delete 'usces_db_access'
wp option delete 'usces_db_member'
wp option delete 'usces_db_member_meta'
wp option delete 'usces_db_order'
wp option delete 'usces_db_order_meta'
wp option delete 'usces_db_ordercart'
wp option delete 'usces_db_ordercart_meta'
wp option delete 'usces_db_log'
wp option delete 'usces_db_acting_log'
wp option delete 'usces_db_item'
wp option delete 'usces_db_skus'
wp option delete 'usces_db_opts'
wp option delete 'usces_db_admin_log'
wp option delete 'usces_opt_member'
wp option delete 'usces_opt_order'
wp option delete 'usces_opt_item'
wp option delete 'dlseller'
wp option delete 'active_sitewide_plugins'
wp option delete 'usces_item_option_select'
wp option delete 'usces_custom_order_select'
wp option delete 'usces_custom_customer_select'
wp option delete 'usces_custom_field_position_select'
wp option delete 'usces_custom_delivery_select'
wp option delete 'usces_custom_member_select'
wp option delete 'usces_backup'
wp option delete 'usces_backup_date'
wp option delete 'usces_upgrade3'
wp option delete 'usces_upgrade2'
wp option delete 'usces_upgrade'
wp option delete 'usces_db_version'
wp option delete 'usces_currency_symbol'
wp option delete 'usces_states'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete 'welcart_csv_import_error'
wp transient delete 'update_wcex_plugins'

# Clear Cron Jobs
wp cron event delete 'wc_cron'
wp cron event delete 'wc_cron_w'
wp cron event delete 'publish_future_post'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metaboxhidden_dashboard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metaboxhidden_dashboard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metaboxhidden_dashboard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metaboxhidden_dashboard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usces_admin_log_screen_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usces_admin_log_screen_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usces_admin_log_screen_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usces_admin_log_screen_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_itemCode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_itemCode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_itemCode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_itemCode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
