#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wppayform_statuses'
wp option delete '_wppayform_pro_license_status'
wp option delete '_wppayform_user_dashboard_page'
wp option delete 'wppayform_global_currency_settings'
wp option delete '_wppayform_paymattic_user_force_redirect'
wp option delete '_wppayform_dashboard_permitted_roles'
wp option delete '_wppayform_global_cancel_subsription_email_settings'
wp option delete '_wppayform_enable_paymattic_user_dashboard'
wp option delete 'wppayform_user_dashboard_page'
wp option delete 'wppayform_recaptcha_settings'
wp option delete 'wppayform_turnstile_settings'
wp option delete 'wppayform_turnstile_validation_status'
wp option delete 'wppayform_order_items_meta_migrate'
wp option delete 'wppayform_ip_logging_status'
wp option delete 'wppayform_honeypot_status'
wp option delete 'wppayform_abandoned_time'
wp option delete 'wppayform_business_name'
wp option delete 'wppayform_business_address'
wp option delete 'wppayform_business_logo'
wp option delete 'wppayform_integration_status'
wp option delete 'wppayform_global_modules_status'
wp option delete '_wppayform_form_permission'
wp option delete 'active_sitewide_plugins'
wp option delete 'wppayform_stripe_payment_settings'
wp option delete 'wppayform_coupon_status'
wp option delete 'wppayform_settings'
wp option delete 'wppayform_payment_settings_offline'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wppayform_payment_settings_%'"
wp option delete 'wppayform_confirmation_pages'
wp option delete '_wppayform_mailchimp_details'
wp option delete '_wppayform_security_salt'
wp option delete 'WPF_DB_VERSION'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'wppayform/daily_reminder_task'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppayform_form_design_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppayform_form_design_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppayform_form_design_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppayform_form_design_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recaptcha_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recaptcha_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recaptcha_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recaptcha_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_turnstile_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_turnstile_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_turnstile_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_turnstile_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppayform_show_title_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppayform_show_title_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppayform_show_title_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppayform_show_title_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppayform_paymentform_builder_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppayform_paymentform_builder_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppayform_paymentform_builder_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppayform_paymentform_builder_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppayform_submit_button_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppayform_submit_button_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppayform_submit_button_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppayform_submit_button_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpf_has_recurring_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpf_has_recurring_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpf_has_recurring_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpf_has_recurring_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpf_has_payment_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpf_has_payment_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpf_has_payment_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpf_has_payment_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpf_form_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpf_form_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpf_form_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpf_form_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppapyform_paymentform_confirmation_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppapyform_paymentform_confirmation_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppapyform_paymentform_confirmation_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppapyform_paymentform_confirmation_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppayform_paymentform_currency_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppayform_paymentform_currency_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppayform_paymentform_currency_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppayform_paymentform_currency_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppapyform_receipt_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppapyform_receipt_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppapyform_receipt_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppapyform_receipt_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppayform_form_scheduling_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppayform_form_scheduling_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppayform_form_scheduling_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppayform_form_scheduling_settings'"
