-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('turbosmtp_email_validator_enabled', 'turbosmtp_email_validator_api_timeout', 'turbosmtp_email_validator_consumer_key', 'turbosmtp_email_validator_consumer_secret', 'turbosmtp_email_validator_validation_forms', 'turbosmtp_email_validator_validation_pass', 'turbosmtp_email_validator_error_message', 'turbosmtp_email_validator_whitelist', 'turbosmtp_email_validator_general_settings', 'turbosmtp_email_validator_subscription');

