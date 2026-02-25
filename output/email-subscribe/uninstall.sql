-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_news_letter_settings', 'email_subscription_popup_messages', 'mass_email_queue_news_subscriber', 'mass_email_subscribers_succ', 'mass_email_subscribers_err');

