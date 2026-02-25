#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rcp_settings'
wp option delete 'rcp_stripe_connect_account_id'
wp option delete 'rcp_version'
wp option delete 'rcp_version_upgraded_from'
wp option delete 'rcp_version_upgraded_on'
wp option delete 'rcp_membership_level_db'
wp option delete 'rcp_reminder_notices'
wp option delete 'rcp_restricted_post_types'
wp option delete 'active_sitewide_plugins'
wp option delete 'rcp_db_version'
wp option delete 'rcp_discounts_db_version'
wp option delete 'rcp_payments_db_version'
wp option delete 'rcp_debug_log_filename'
wp option delete 'rcp_is_installed'
wp option delete 'rcp_install_pages_created'
wp option delete 'fs_accounts'
wp option delete 'dismissed-rcp-plugin-migration-notice'
wp option delete 'dismissed-restrict-content-upgrade-notice'
wp option delete 'dismissed-restrict-content-bfcm-notice'
wp option delete 'dismissed-restrict-content-bf-2024-banner'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dismissed-%'"
wp option delete 'rc_user_level_post_meta_updated'
wp option delete 'rc_settings'
wp option delete 'rc_version'
wp option delete 'Restrict_Content_Plugin_Activated'
wp option delete 'restrict_content_chosen_version'
wp option delete 'restrict_content_shown_stripe_marketing'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rcp_add_ons_feed_%' OR option_name LIKE '_site_transient_rcp_add_ons_feed_%'"
wp transient delete 'rcp_subscription_levels'
wp transient delete 'rcp_login_redirect_invalid'
wp transient delete 'update_plugins'
wp transient delete 'rcp_earnings'
wp transient delete 'rcp_payments_count'
wp transient delete 'rcp_payments'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rcp_user_logged_in_%' OR option_name LIKE '_site_transient_rcp_user_logged_in_%'"
wp transient delete 'rcp_post_ids_assigned_to_restricted_terms'
wp transient delete 'rcp_restricted_post_ids'

# Clear Cron Jobs
wp cron event delete 'rcp_expired_users_check'
wp cron event delete 'rcp_send_expiring_soon_notice'
wp cron event delete 'rcp_check_member_counts'
wp cron event delete 'rcp_mark_abandoned_payments'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rcp_content_restriction_message_missing_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rcp_content_restriction_message_missing_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rcp_content_restriction_message_missing_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rcp_content_restriction_message_missing_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rcp_stripe_connect_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rcp_stripe_connect_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rcp_stripe_connect_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rcp_stripe_connect_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcp_terms_agreed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcp_terms_agreed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcp_terms_agreed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcp_terms_agreed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcp_privacy_policy_agreed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcp_privacy_policy_agreed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcp_privacy_policy_agreed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcp_privacy_policy_agreed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcp_signup_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcp_signup_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcp_signup_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcp_signup_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcp_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcp_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcp_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcp_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcp_user_discounts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcp_user_discounts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcp_user_discounts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcp_user_discounts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcp_is_trialing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcp_is_trialing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcp_is_trialing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcp_is_trialing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rcp_new_subscription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rcp_new_subscription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rcp_new_subscription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rcp_new_subscription'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcp_recurring'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcp_recurring'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcp_recurring'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcp_recurring'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_paid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_paid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_paid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_paid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcp_subscription_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcp_subscription_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcp_subscription_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcp_subscription_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcp_access_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcp_access_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcp_access_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcp_access_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcp_show_excerpt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcp_show_excerpt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcp_show_excerpt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcp_show_excerpt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcp_user_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcp_user_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcp_user_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcp_user_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcp_restricted_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcp_restricted_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcp_restricted_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcp_restricted_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcp_generated_via_cli'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcp_generated_via_cli'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcp_generated_via_cli'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcp_generated_via_cli'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'rcp_renewed_date_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'rcp_renewed_date_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'rcp_renewed_date_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rcp_renewed_date_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcp_pending_subscription_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcp_pending_subscription_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcp_pending_subscription_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcp_pending_subscription_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcp_pending_subscription_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcp_pending_subscription_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcp_pending_subscription_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcp_pending_subscription_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rcp_just_upgraded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rcp_just_upgraded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rcp_just_upgraded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rcp_just_upgraded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcp_pending_payment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcp_pending_payment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcp_pending_payment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcp_pending_payment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcp_pending_email_verification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcp_pending_email_verification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcp_pending_email_verification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcp_pending_email_verification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wp_log_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wp_log_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wp_log_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wp_log_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcp_hide_from_feed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcp_hide_from_feed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcp_hide_from_feed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcp_hide_from_feed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rcp_old_subscription_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rcp_old_subscription_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rcp_old_subscription_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rcp_old_subscription_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rcp_expired_email_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rcp_expired_email_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rcp_expired_email_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rcp_expired_email_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rcp_woo_subscription_levels_to_purchase'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rcp_woo_subscription_levels_to_purchase'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rcp_woo_subscription_levels_to_purchase'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rcp_woo_subscription_levels_to_purchase'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rcp_woo_subscription_levels_to_view'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rcp_woo_subscription_levels_to_view'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rcp_woo_subscription_levels_to_view'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rcp_woo_subscription_levels_to_view'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rcp_woo_active_to_purchase'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rcp_woo_active_to_purchase'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rcp_woo_active_to_purchase'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rcp_woo_active_to_purchase'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rcp_woo_access_level_to_purchase'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rcp_woo_access_level_to_purchase'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rcp_woo_access_level_to_purchase'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rcp_woo_access_level_to_purchase'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rcp_woo_active_to_view'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rcp_woo_active_to_view'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rcp_woo_active_to_view'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rcp_woo_active_to_view'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rcp_woo_access_level_to_view'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rcp_woo_access_level_to_view'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rcp_woo_access_level_to_view'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rcp_woo_access_level_to_view'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-approve-user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-approve-user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-approve-user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-approve-user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rcp_stripe_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rcp_stripe_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rcp_stripe_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rcp_stripe_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcp_recurring_payment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcp_recurring_payment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcp_recurring_payment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcp_recurring_payment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcp_pending_expiration_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcp_pending_expiration_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcp_pending_expiration_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcp_pending_expiration_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcp_pending_subscription_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcp_pending_subscription_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcp_pending_subscription_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcp_pending_subscription_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
