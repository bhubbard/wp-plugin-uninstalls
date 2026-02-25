-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wrs_sc_settings', 'scbr_settings', 'wrs_sc_blocked_users', 'scbr_blocked_users');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wrs_sc_trusted_devices', 'scbr_trusted_devices', 'wrs_sc_siren_muted', 'scbr_siren_muted');
DELETE FROM wp_usermeta WHERE meta_key IN ('wrs_sc_trusted_devices', 'scbr_trusted_devices', 'wrs_sc_siren_muted', 'scbr_siren_muted');
DELETE FROM wp_termmeta WHERE meta_key IN ('wrs_sc_trusted_devices', 'scbr_trusted_devices', 'wrs_sc_siren_muted', 'scbr_siren_muted');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wrs_sc_trusted_devices', 'scbr_trusted_devices', 'wrs_sc_siren_muted', 'scbr_siren_muted');

