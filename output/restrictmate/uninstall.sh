#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'restrictmate_do_activation_redirect'
wp option delete 'restrictmate_installed'
wp option delete 'restrictmate_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'restrictmate_page_id_for_%'"
wp option delete 'restrictmate_restricted_content_message'
wp option delete 'restrictmate_content_excerpt'
wp option delete 'restrictmate_currency'
wp option delete 'restrictmate_gateway_manual_payment'
wp option delete 'restrictmate_gateway_manual_payment_title'
wp option delete 'restrictmate_gateway_manual_payment_description'
wp option delete 'restrictmate_gateway_manual_payment_account_details'
wp option delete 'restrictmate_email_from_name'
wp option delete 'restrictmate_email_from_email'
wp option delete 'restrictmate_email_format'
wp option delete 'restrictmate_invoice_heading'
wp option delete 'restrictmate_invoice_company_name'
wp option delete 'restrictmate_invoice_address_line_1'
wp option delete 'restrictmate_invoice_address_line_2'
wp option delete 'restrictmate_invoice_email'
wp option delete 'restrictmate_invoice_footer_text'
wp option delete 'restrictmate_latest_version'
wp option delete 'restrictmate_gateway_stripe_payment_description'
wp option delete 'restrictmate_invoice_restrictmate-invoice-footer_text'
wp option delete 'restrictmate_gateway_stripe'
wp option delete 'restrictmate_gateway_stripe_test_mode'
wp option delete 'restrictmate_gateway_stripe_test_secret_key'
wp option delete 'restrictmate_gateway_stripe_live_secret_key'
wp option delete 'restrictmate_page_id_for_thankyou'
wp option delete 'restrictmate_page_id_for_register'
wp option delete 'restrictmate_page_id_for_account'
wp option delete 'restrictmate_gateway_stripe_payment_title'
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
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_restrictmate_meta_plain_text_email_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_restrictmate_meta_plain_text_email_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_restrictmate_meta_plain_text_email_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_restrictmate_meta_plain_text_email_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_restrictmate_meta_is_admin_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_restrictmate_meta_is_admin_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_restrictmate_meta_is_admin_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_restrictmate_meta_is_admin_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'restrictmate_user_subscriptions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'restrictmate_user_subscriptions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'restrictmate_user_subscriptions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'restrictmate_user_subscriptions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_restrictmate_meta_membership_levels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_restrictmate_meta_membership_levels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_restrictmate_meta_membership_levels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_restrictmate_meta_membership_levels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'restrictmate_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'restrictmate_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'restrictmate_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'restrictmate_last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%membership_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%membership_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%membership_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%membership_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%subscription_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%subscription_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%subscription_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%subscription_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%membership_expiry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%membership_expiry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%membership_expiry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%membership_expiry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
