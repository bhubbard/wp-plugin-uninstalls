#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcdp_fee_recovery'
wp option delete 'wcdp_compatibility_mode'
wp option delete 'wcdp_fee_recovery_values'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'wcdp_secondary_color'
wp option delete 'wcdp_main_color'
wp option delete 'wcdp_error_color'
wp option delete 'wcdp_min_amount'
wp option delete 'wcdp_max_amount'
wp option delete 'wcdp_multiple_in_cart'
wp option delete 'woocommerce_feature_product_block_editor_enabled'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'wcdp_disable_order_notes'
wp option delete 'woocommerce_analytics_enabled'
wp option delete 'active_sitewide_plugins'
wp option delete 'wcdp_enable_checkout_checkbox'
wp option delete 'wcdp_transient_cache_keys'
wp option delete 'wcdp_lb_title'
wp option delete 'wcdp_lb_subtitle'
wp option delete 'wcdp_lb_title_checked'
wp option delete 'wcdp_lb_title_unchecked'
wp option delete 'wcdp_lb_subtitle_checked'
wp option delete 'wcdp_lb_subtitle_unchecked'
wp option delete 'wcdp_checkout_checkbox_text'
wp option delete 'mwb_sfw_cancel_subscription_for_customer'
wp option delete 'woocommerce_weight_unit'
wp option delete 'wcdp_redirect_to_cart'
wp option delete 'wcdp_max_range'
wp option delete 'wcdp_contribution_title'
wp option delete 'wcdp_choose_amount_title'
wp option delete 'wcdp_branding'
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_db_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wcdp_order_counter_%' OR option_name LIKE '_site_transient_wcdp_order_counter_%'"
wp transient delete 'wcdp_feedback_send'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_donable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_donable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_donable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_donable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcdp_total_revenue'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcdp_total_revenue'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcdp_total_revenue'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcdp_total_revenue'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcdp-settings[wcdp_fundraising_goal]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcdp-settings[wcdp_fundraising_goal]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcdp-settings[wcdp_fundraising_goal]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcdp-settings[wcdp_fundraising_goal]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcdp-settings[wcdp_fundraising_end_date]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcdp-settings[wcdp_fundraising_end_date]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcdp-settings[wcdp_fundraising_end_date]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcdp-settings[wcdp_fundraising_end_date]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wcdp_newsletter_notice_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wcdp_newsletter_notice_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wcdp_newsletter_notice_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wcdp_newsletter_notice_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwb_schedule_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwb_schedule_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwb_schedule_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwb_schedule_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwb_subscription_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwb_subscription_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwb_subscription_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwb_subscription_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwb_next_payment_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwb_next_payment_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwb_next_payment_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwb_next_payment_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwb_susbcription_trial_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwb_susbcription_trial_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwb_susbcription_trial_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwb_susbcription_trial_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_qty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcdp-settings[0]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcdp-settings[0]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcdp-settings[0]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcdp-settings[0]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcdp-settings[1]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcdp-settings[1]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcdp-settings[1]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcdp-settings[1]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%]'"
