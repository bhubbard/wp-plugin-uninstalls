-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auth_key', 'simba_tfa_priv_key_format', 'tfa_incorrect_code_attempts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tfa_priv_key_64', 'tfa_hotp_off_sync', 'simba_tfa_emergency_codes_64', 'tfa_algorithm_type', 'tfa_last_pws', 'tfa_last_login', 'tfa_hotp_counter', 'tfa_enable_tfa', 'tfa_trusted_devices');
DELETE FROM wp_usermeta WHERE meta_key IN ('tfa_priv_key_64', 'tfa_hotp_off_sync', 'simba_tfa_emergency_codes_64', 'tfa_algorithm_type', 'tfa_last_pws', 'tfa_last_login', 'tfa_hotp_counter', 'tfa_enable_tfa', 'tfa_trusted_devices');
DELETE FROM wp_termmeta WHERE meta_key IN ('tfa_priv_key_64', 'tfa_hotp_off_sync', 'simba_tfa_emergency_codes_64', 'tfa_algorithm_type', 'tfa_last_pws', 'tfa_last_login', 'tfa_hotp_counter', 'tfa_enable_tfa', 'tfa_trusted_devices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tfa_priv_key_64', 'tfa_hotp_off_sync', 'simba_tfa_emergency_codes_64', 'tfa_algorithm_type', 'tfa_last_pws', 'tfa_last_login', 'tfa_hotp_counter', 'tfa_enable_tfa', 'tfa_trusted_devices');

