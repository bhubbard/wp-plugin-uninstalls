#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'give_licenses'
wp option delete 'give_licenses_refreshed_last_checked'
wp option delete 'give_settings_old'
wp option delete 'give_settings'
wp option delete 'give_addon_last_activated'
wp option delete 'give_import_donation_report'
wp option delete 'give_recently_activated_addons'
wp option delete 'give_earnings_total'
wp option delete '_give_reset_sequential_number'
wp option delete 'give_temp_delete_donation_count'
wp option delete 'give_temp_delete_donation_ids'
wp option delete 'give_temp_delete_test_ids'
wp option delete 'give_temp_recount_earnings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'give_stats_found_payments_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'give_stats_missing_payments%'"
wp option delete 'give_temp_reset_ids'
wp option delete 'give_import_subscription_report'
wp option delete 'give_version'
wp option delete 'give_version_upgraded_from'
wp option delete 'give_last_paypal_ipn_received'
wp option delete 'give_show_db_upgrade_complete_notice'
wp option delete 'give_upgrade_error'
wp option delete 'give_pause_upgrade'
wp option delete 'give_paused_batches'
wp option delete 'give_doing_upgrade'
wp option delete 'give_db_update_count'
wp option delete 'give_completed_upgrades'
wp option delete '_give_subscriptions_edit_last'
wp option delete 'give_subscriptions'
wp option delete 'give_is_addon_activated'
wp option delete 'give_default_api_version'
wp option delete 'give_test_mode_default_gateway'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp option delete '_give_table_check'
wp option delete 'give_install_pages_created'
wp option delete 'active_sitewide_plugins'
wp option delete 'give_get_versions'
wp option delete 'give_payment_totals_upgraded'
wp option delete 'givewp_feature_flag_notifications_count'
wp option delete 'givewp_new_notification_campaigns_dismissed'
wp option delete 'give_campaigns_data'
wp option delete 'give_campaigns_subscription_data'
wp option delete 'give_campaigns_subscriptions_data'
wp option delete 'classic-editor-replace'
wp option delete 'give_activecampaign_label'
wp option delete 'give_database_migrations'
wp option delete 'give_onboarding'
wp option delete 'give_free_addon_modal_displayed'
wp option delete 'givewp_form_editor_donation_options_recurring_recommendation'
wp option delete 'givewp_payment_gateway_fee_recovery_recommendation'
wp option delete 'givewp_welcome_banner_dismiss'

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_give_paypal_onboarding_state_%' OR option_name LIKE '_site_transient_give_paypal_onboarding_state_%'"
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'give_monthly_scheduled_events'
wp cron event delete 'give_weekly_scheduled_events'
wp cron event delete 'give_daily_scheduled_events'
wp cron event delete 'give_thricely_scheduled_events'
wp cron event delete 'give_daily_cron'
wp cron event delete 'give_weekly_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_disconnected_donor_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_disconnected_donor_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_disconnected_donor_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_disconnected_donor_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_donors_archive_show_legacy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_donors_archive_show_legacy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_donors_archive_show_legacy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_donors_archive_show_legacy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_offline-donation-instruction_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_offline-donation-instruction_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_offline-donation-instruction_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_offline-donation-instruction_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_customize_offline_donations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_customize_offline_donations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_customize_offline_donations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_customize_offline_donations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_offline_donation_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_offline_donation_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_offline_donation_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_offline_donation_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_offline_donation_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_offline_donation_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_offline_donation_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_offline_donation_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_payment_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_payment_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_payment_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_payment_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'note_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'note_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'note_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'note_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_set_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_set_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_set_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_set_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_custom_amount_minimum'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_custom_amount_minimum'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_custom_amount_minimum'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_custom_amount_minimum'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_price_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_price_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_price_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_price_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_donation_levels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_donation_levels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_donation_levels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_donation_levels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_levels_minimum_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_levels_minimum_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_levels_minimum_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_levels_minimum_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_levels_maximum_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_levels_maximum_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_levels_maximum_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_levels_maximum_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_set_goal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_set_goal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_set_goal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_set_goal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_form_earnings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_form_earnings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_form_earnings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_form_earnings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_payment_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_payment_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_payment_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_payment_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_offline-donation-instruction_email_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_offline-donation-instruction_email_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_offline-donation-instruction_email_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_offline-donation-instruction_email_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_offline-donation-instruction_email_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_offline-donation-instruction_email_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_offline-donation-instruction_email_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_offline-donation-instruction_email_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_donor_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_donor_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_donor_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_donor_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_comment_moved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_comment_moved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_comment_moved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_comment_moved'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_user_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_user_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_user_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_user_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'give_campaign_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'give_campaign_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'give_campaign_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'give_campaign_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_payment_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_payment_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_payment_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_payment_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_current_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_current_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_current_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_current_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_current_page_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_current_page_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_current_page_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_current_page_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_is_donor_disconnected'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_is_donor_disconnected'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_is_donor_disconnected'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_is_donor_disconnected'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'givewp_show_campaign_interaction_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'givewp_show_campaign_interaction_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'givewp_show_campaign_interaction_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'givewp_show_campaign_interaction_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'givewp_campaign_form_goal_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'givewp_campaign_form_goal_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'givewp_campaign_form_goal_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'givewp_campaign_form_goal_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'givewp_campaign_existing_user_intro_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'givewp_campaign_existing_user_intro_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'givewp_campaign_existing_user_intro_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'givewp_campaign_existing_user_intro_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'givewp_campaign_listtable_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'givewp_campaign_listtable_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'givewp_campaign_listtable_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'givewp_campaign_listtable_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'givewp_campaign_form_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'givewp_campaign_form_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'givewp_campaign_form_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'givewp_campaign_form_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'givewp_campaign_settings_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'givewp_campaign_settings_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'givewp_campaign_settings_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'givewp_campaign_settings_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'givewp-show-upgraded-tooltip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'givewp-show-upgraded-tooltip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'givewp-show-upgraded-tooltip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'givewp-show-upgraded-tooltip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'givewp-show-default-form-tooltip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'givewp-show-default-form-tooltip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'givewp-show-default-form-tooltip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'givewp-show-default-form-tooltip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_donation_forms_archive_show_legacy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_donation_forms_archive_show_legacy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_donation_forms_archive_show_legacy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_donation_forms_archive_show_legacy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_donations_archive_show_legacy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_donations_archive_show_legacy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_donations_archive_show_legacy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_donations_archive_show_legacy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'givewp-form-builder-design-tour-completed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'givewp-form-builder-design-tour-completed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'givewp-form-builder-design-tour-completed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'givewp-form-builder-design-tour-completed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'givewp-form-builder-schema-tour-completed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'givewp-form-builder-schema-tour-completed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'givewp-form-builder-schema-tour-completed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'givewp-form-builder-schema-tour-completed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'givewp-goal-notice-dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'givewp-goal-notice-dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'givewp-goal-notice-dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'givewp-goal-notice-dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'givewp-additional-payment-gateways-notice-dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'givewp-additional-payment-gateways-notice-dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'givewp-additional-payment-gateways-notice-dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'givewp-additional-payment-gateways-notice-dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_recurring_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_recurring_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_recurring_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_recurring_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_goal_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_goal_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_goal_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_goal_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_donor_comment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_donor_comment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_donor_comment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_donor_comment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_terms_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_terms_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_terms_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_terms_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_anonymous_donation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_anonymous_donation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_anonymous_donation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_anonymous_donation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_company_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_company_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_company_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_company_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_subscriptions_archive_show_legacy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_subscriptions_archive_show_legacy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_subscriptions_archive_show_legacy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_subscriptions_archive_show_legacy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_givewp_elementor_auto_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_givewp_elementor_auto_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_givewp_elementor_auto_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_givewp_elementor_auto_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_givewp_elementor_template_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_givewp_elementor_template_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_givewp_elementor_template_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_givewp_elementor_template_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%persisted_preferences'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%persisted_preferences'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%persisted_preferences'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%persisted_preferences'"
