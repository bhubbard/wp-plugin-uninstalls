-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpso_last_reset_time', 'shieldon_authetication', 'shieldon_xss_protected_type', 'shieldon_xss_protected_list', 'wpso_driver_reset', 'wpso_version', 'shieldon_component', 'shieldon_xss_protection', 'wpso_driver_hash', 'wpso_lang_code', 'wpso_channel_id');
DELETE FROM wp_options WHERE option_name LIKE 'shieldon_%';

