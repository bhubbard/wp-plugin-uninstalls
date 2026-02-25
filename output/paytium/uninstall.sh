#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'paytium_mollie_partner_id'
wp option delete 'paytium_test_api_key'
wp option delete 'paytium_live_api_key'
wp option delete 'paytium_mollie_website_profile'
wp option delete 'paytium_always_enqueue'
wp option delete 'footer_error'
wp option delete 'pt_environment'
wp option delete 'paytium_currency'
wp option delete 'paytium_enable_live_key'
wp option delete 'paytium_notification_counter'
wp option delete 'pt_show_admin_notice_setup_wizard'
wp option delete 'pt_hide_admin_notice_newsletter'
wp option delete 'pt_show_admin_notice_newsletter'
wp option delete 'pt_show_admin_notice_extensions'
wp option delete 'pt_hide_admin_notice_extensions'
wp option delete 'pt_show_admin_notice_has_live_payments'
wp option delete 'pt_admin_notice_switch_to_live_mode'
wp option delete 'pt_admin_notice_hide_please_review'
wp option delete 'paytium_item_limits'
wp option delete 'paytium_no_api_keys'
wp option delete 'paytium_notifications'
wp option delete 'paytium_payment_sources'
wp option delete 'paytium_admins_test_mode'
wp option delete 'paytium_mailfrom_override_default'
wp option delete 'paytium_mailfrom_override_admin'
wp option delete 'paytium_name'
wp option delete 'paytium_image_url'
wp option delete 'button_label'
wp option delete 'button_style'
wp option delete 'pt_redirect_url'
wp option delete 'paytium_total_label'
wp option delete 'pt_paytium_field'
wp option delete 'pt_paytium_button'
wp option delete 'pt_uea_label'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_status'"
wp option delete 'paytium_enable_remember'
wp option delete 'paytium_uninstall_save_settings'
wp option delete 'pt_settings_default'
wp option delete 'pt_settings_master'
wp option delete 'pt_settings_keys'
wp option delete 'pt_has_run'
wp option delete 'pt_version'
wp option delete 'pt_upgrade_has_run'
wp option delete 'pt_settings_licenses'
wp option delete 'pt_licenses'

# Delete Transients
wp transient delete 'paytium_mollie_username'
wp transient delete 'paytium_mollie_password'
wp transient delete 'pt_wait_to_show_admin_notice_extensions'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_paytium_form_load_%' OR option_name LIKE '_site_transient_paytium_form_load_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pt_show_%' OR option_name LIKE '_site_transient_pt_show_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_source_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_source_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_source_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_source_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_source_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_source_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_source_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_source_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pt_payment_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pt_payment_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pt_payment_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pt_payment_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pt-uploaded-files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pt-uploaded-files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pt-uploaded-files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pt-uploaded-files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_payments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_payments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_payments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_payments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_invoices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_invoices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_invoices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_invoices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_subscriptions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_subscriptions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_subscriptions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_subscriptions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_cancel_subscription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_cancel_subscription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_cancel_subscription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_cancel_subscription'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_times'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_times'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_times'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_times'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_first_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_first_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_first_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_first_payment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_recurring_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_recurring_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_recurring_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_recurring_payment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_cancelled_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_cancelled_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_cancelled_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_cancelled_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_webhook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_webhook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_webhook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_webhook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_item-1-amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_item-1-amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_item-1-amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_item-1-amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_item-recurring-payment-1-amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_item-recurring-payment-1-amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_item-recurring-payment-1-amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_item-recurring-payment-1-amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_discount_exclude_first_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_discount_exclude_first_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_discount_exclude_first_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_discount_exclude_first_payment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_discount_first_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_discount_first_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_discount_first_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_discount_first_payment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_discount_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_discount_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_discount_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_discount_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_discount_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_discount_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_discount_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_discount_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_discount_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_discount_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_discount_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_discount_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zero_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zero_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zero_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zero_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pt_limit_last_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pt_limit_last_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pt_limit_last_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pt_limit_last_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_last_paid_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_last_paid_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_last_paid_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_last_paid_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pt_user_data_last_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pt_user_data_last_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pt_user_data_last_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pt_user_data_last_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_payment_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_payment_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_payment_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_payment_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_item-1-value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_item-1-value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_item-1-value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_item-1-value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_item-1-tax-amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_item-1-tax-amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_item-1-tax-amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_item-1-tax-amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_item-1-total-amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_item-1-total-amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_item-1-total-amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_item-1-total-amount'"
