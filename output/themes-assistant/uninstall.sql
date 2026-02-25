-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ata_installed', 'ata_version', 'borax_license_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('at_assistant_dismissed_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('at_assistant_dismissed_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('at_assistant_dismissed_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('at_assistant_dismissed_notice');

