-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('authyo_otp_options', 'authyo_nf_email_subscription_dismissed', 'authyo_nf_email_subscription_completed', 'authyo_nf_trigger_tracking', 'authyo_nf_show_email_subscription');
DELETE FROM wp_options WHERE option_name LIKE 'authyo_verified_%';
DELETE FROM wp_options WHERE option_name LIKE 'authyo_mask_%';

