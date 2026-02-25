#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'npmp_enabled_features'
wp option delete 'npmp_donations_migrated_to_cpt'
wp option delete 'npmp_newsletter_can_spam_footer'
wp option delete 'npmp_newsletter_rate_limit'
wp option delete 'npmp_email_settings'
wp option delete 'npmp_email_method'
wp option delete 'npmp_email_from_email'
wp option delete 'npmp_email_from_name'
wp option delete 'npmp_smtp_host'
wp option delete 'npmp_smtp_port'
wp option delete 'npmp_smtp_encryption'
wp option delete 'npmp_smtp_auth'
wp option delete 'npmp_smtp_username'
wp option delete 'npmp_smtp_password'
wp option delete 'npmp_email_last_result'
wp option delete 'npmp_newsletter_track_opens'
wp option delete 'npmp_newsletter_track_clicks'
wp option delete 'npmp_membership_levels'
wp option delete 'npmp_calendar_page_id'
wp option delete 'npmp_captcha_provider'
wp option delete 'npmp_newsletter_post_types_migrated'
wp option delete 'npmp_email_delivery_settings'
wp option delete 'npmp_smtp_debug_log'
wp option delete 'npmp_aws_ses_access_key'
wp option delete 'npmp_aws_ses_secret_key'
wp option delete 'npmp_brevo_api_key'
wp option delete 'npmp_sendgrid_api_key'
wp option delete 'npmp_mailgun_api_key'
wp option delete 'npmp_mailgun_domain'
wp option delete 'npmp_postmark_api_key'
wp option delete 'npmp_sparkpost_api_key'
wp option delete 'npmp_email_last_error'
wp option delete 'npmp_default_membership_level'
wp option delete 'npmp_turnstile_enabled'
wp option delete 'npmp_turnstile_site_key'
wp option delete 'npmp_turnstile_secret_key'
wp option delete 'npmp_recaptcha_site_key'
wp option delete 'npmp_recaptcha_secret_key'
wp option delete 'npmp_members_migrated_to_cpt'
wp option delete 'npmp_membership_form_settings'
wp option delete 'npmp_donation_form_intro'
wp option delete 'npmp_donation_page_id'
wp option delete 'npmp_enable_thank_you_email'
wp option delete 'npmp_thank_you_subject'
wp option delete 'npmp_thank_you_message'
wp option delete 'npmp_donation_form_title'
wp option delete 'npmp_donation_amount_label'
wp option delete 'npmp_donation_email_label'
wp option delete 'npmp_donation_button_label'
wp option delete 'npmp_enabled_payment_gateways'
wp option delete 'npmp_paypal_email'
wp option delete 'npmp_venmo_handle'
wp option delete 'npmp_paypal_mode'
wp option delete 'npmp_paypal_live_client_id'
wp option delete 'npmp_paypal_live_secret'
wp option delete 'npmp_paypal_sandbox_client_id'
wp option delete 'npmp_paypal_sandbox_secret'
wp option delete 'npmp_stripe_mode'
wp option delete 'npmp_stripe_live_publishable_key'
wp option delete 'npmp_stripe_live_secret_key'
wp option delete 'npmp_stripe_test_publishable_key'
wp option delete 'npmp_stripe_test_secret_key'
wp option delete 'npmp_enable_one_time'
wp option delete 'npmp_paypal_enable_weekly'
wp option delete 'npmp_paypal_enable_monthly'
wp option delete 'npmp_paypal_enable_quarterly'
wp option delete 'npmp_paypal_enable_annual'
wp option delete 'npmp_stripe_enable_weekly'
wp option delete 'npmp_stripe_enable_monthly'
wp option delete 'npmp_stripe_enable_quarterly'
wp option delete 'npmp_stripe_enable_annual'
wp option delete 'npmp_payment_gateway'
wp option delete 'npmp_enable_paypal'
wp option delete 'npmp_paypal_method'
wp option delete 'npmp_paypal_minimum'
wp option delete 'npmp_setup_completed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%weekly'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%monthly'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%quarterly'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%annual'"
wp option delete 'npmp_enable_monthly'
wp option delete 'npmp_enable_annual'
wp option delete 'npmp_paypal_client_id'
wp option delete 'npmp_paypal_secret'

# Delete Transients
wp transient delete 'npmp_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'npmp_process_queued_newsletters'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_npmp_newsletter_levels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_npmp_newsletter_levels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_npmp_newsletter_levels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_npmp_newsletter_levels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_npmp_newsletter_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_npmp_newsletter_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_npmp_newsletter_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_npmp_newsletter_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_npmp_newsletter_queued_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_npmp_newsletter_queued_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_npmp_newsletter_queued_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_npmp_newsletter_queued_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_npmp_newsletter_recipient_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_npmp_newsletter_recipient_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_npmp_newsletter_recipient_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_npmp_newsletter_recipient_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_npmp_newsletter_audience_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_npmp_newsletter_audience_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_npmp_newsletter_audience_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_npmp_newsletter_audience_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_npmp_newsletter_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_npmp_newsletter_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_npmp_newsletter_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_npmp_newsletter_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_npmp_newsletter_preheader'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_npmp_newsletter_preheader'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_npmp_newsletter_preheader'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_npmp_newsletter_preheader'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_npmp_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_npmp_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_npmp_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_npmp_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_npmp_is_default_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_npmp_is_default_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_npmp_is_default_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_npmp_is_default_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_npmp_event_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_npmp_event_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_npmp_event_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_npmp_event_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_npmp_event_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_npmp_event_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_npmp_event_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_npmp_event_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_npmp_event_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_npmp_event_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_npmp_event_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_npmp_event_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_npmp_event_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_npmp_event_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_npmp_event_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_npmp_event_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_npmp_event_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_npmp_event_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_npmp_event_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_npmp_event_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'npmp_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'npmp_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'npmp_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'npmp_status'"
