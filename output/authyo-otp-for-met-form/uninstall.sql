-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('authyo_otp_mf_settings', 'authyo_otp_mf_form_settings', 'authyo_otp_mf_country_list', 'authyo_otp_mf_country_list_updated_at', 'authyo_mf_email_subscription_dismissed', 'authyo_mf_email_subscription_completed', 'authyo_otp_mf_entry_file_index', 'authyo_mf_show_email_subscription');
DELETE FROM wp_options WHERE option_name LIKE 'authyo_otp_mf_verified_%';
DELETE FROM wp_options WHERE option_name LIKE '%:email';

