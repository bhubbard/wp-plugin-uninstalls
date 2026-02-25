-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vlss_api_key', 'vlss_tokenizer_verified', 'vlss_tokenizer_registered', 'vlss_tokenizer_client_id', 'vlss_tokenizer_api_key');
DELETE FROM wp_options WHERE option_name LIKE 'vlss_api_key_%';
DELETE FROM wp_options WHERE option_name LIKE 'vlss_otp_%';
DELETE FROM wp_options WHERE option_name LIKE 'vlss_otp_%';

