#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_custom_order_statuses_version'
wp option delete 'alg_orders_custom_statuses_enable_column_colored'
wp option delete 'alg_orders_custom_statuses_enable_paid'
wp option delete 'alg_orders_custom_statuses_enable_editable'
wp option delete 'alg_orders_custom_statuses_emails_address'
wp option delete 'alg_orders_custom_statuses_array'
wp option delete 'alg_orders_custom_statuses_filters_priority'
wp option delete 'alg_orders_custom_statuses_add_to_reports'
wp option delete 'alg_orders_custom_statuses_add_to_bulk_actions'
wp option delete 'alg_orders_custom_statuses_emails_enabled'
wp option delete 'woocommerce_version'
wp option delete 'alg_orders_custom_statuses_emails_statuses'
wp option delete 'alg_orders_custom_statuses_emails_subject'
wp option delete 'alg_orders_custom_statuses_emails_heading'
wp option delete 'alg_orders_custom_statuses_emails_content'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_orders_custom_status_icon_data_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_orders_custom_statuses_default_status_%'"
wp option delete 'alg_orders_custom_statuses_default_status'
wp option delete 'is_statuses_migrated'
wp option delete 'alg_orders_custom_statuses_fallback_delete_status'
wp option delete 'is_statuses_migrated_to_slug'
wp option delete 'alg_custom_order_status_no_empty_slug_field'
wp option delete 'alg_orders_custom_statuses_default_status_bacs'
wp option delete 'alg_orders_custom_statuses_default_status_cheque'
wp option delete 'alg_orders_custom_statuses_default_status_cod'
wp option delete 'alg_orders_custom_statuses_default_status_paypal'
wp option delete 'alg_orders_custom_statuses_bcc_emails_address'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp option delete 'ts_tracker_last_send'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_default_country'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset_usage_tracking'"
wp option delete 'cos_lite_allow_tracking'
wp option delete 'alg_orders_custom_statuses_add_to_order_list_actions'
wp option delete 'alg_orders_custom_statuses_add_to_order_list_actions_colored'
wp option delete 'alg_orders_custom_statuses_add_to_order_preview_actions'
wp option delete 'edd_license_key_cos'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alg_orders_individual_custom_status_enable_paid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alg_orders_individual_custom_status_enable_paid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alg_orders_individual_custom_status_enable_paid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alg_orders_individual_custom_status_enable_paid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'text_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'text_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'text_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'text_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alg_cos_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alg_cos_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alg_cos_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alg_cos_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alg_orders_individual_custom_status_user_cancel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alg_orders_individual_custom_status_user_cancel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alg_orders_individual_custom_status_user_cancel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alg_orders_individual_custom_status_user_cancel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alg_orders_custom_statuses_emails_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alg_orders_custom_statuses_emails_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alg_orders_custom_statuses_emails_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alg_orders_custom_statuses_emails_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alg_orders_custom_statuses_emails_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alg_orders_custom_statuses_emails_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alg_orders_custom_statuses_emails_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alg_orders_custom_statuses_emails_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alg_orders_custom_statuses_emails_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alg_orders_custom_statuses_emails_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alg_orders_custom_statuses_emails_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alg_orders_custom_statuses_emails_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alg_orders_custom_statuses_emails_heading'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alg_orders_custom_statuses_emails_heading'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alg_orders_custom_statuses_emails_heading'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alg_orders_custom_statuses_emails_heading'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alg_orders_custom_statuses_emails_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alg_orders_custom_statuses_emails_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alg_orders_custom_statuses_emails_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alg_orders_custom_statuses_emails_content'"
