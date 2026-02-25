-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('phone_validator_flags_activation_time', 'phone_validator_flags_last_notice_time');

