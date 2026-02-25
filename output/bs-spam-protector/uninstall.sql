-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bs_spam_protector_secret_key', 'bs_spam_protector_expiration_interval', 'bs_spam_protector_log_checkbox', 'bs_spam_protector_time_check_severity');

