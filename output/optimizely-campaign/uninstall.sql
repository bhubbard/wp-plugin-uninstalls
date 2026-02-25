-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('optimizelycampaign_newsletter_options', 'optimizelycampaign_db_version', 'optimizelycampaign_mail_options', 'optimizelycampaign_wpcore_options', 'optimizelycampaign_woocommerce_options', 'optimizelycampaign_other_options', 'optimizelycampaign_smtp_error_log', 'optimizelycampaign_subscription_message');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('optimizelycampaign_newsletter_subscription', 'optimizelycampaign_subscription_message', 'optimizelycampaign_previous_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('optimizelycampaign_newsletter_subscription', 'optimizelycampaign_subscription_message', 'optimizelycampaign_previous_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('optimizelycampaign_newsletter_subscription', 'optimizelycampaign_subscription_message', 'optimizelycampaign_previous_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('optimizelycampaign_newsletter_subscription', 'optimizelycampaign_subscription_message', 'optimizelycampaign_previous_email');

