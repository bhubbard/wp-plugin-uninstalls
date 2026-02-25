-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ccpact_db_version', 'ccpact_privacy_api_key_tmp', 'ccpact_privacy_mode', 'ccpact_privacy_domain_tmp', 'ccpact_paranoid_metadata', 'ccpact_sane_metadata', 'ccpact_privacy_api_key', 'ccpact_privacy_domain', 'ccpact_privacy_mode_tmp');

