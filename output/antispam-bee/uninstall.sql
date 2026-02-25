-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('antispam_bee', 'antispambee_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('antispam_bee_reason');
DELETE FROM wp_usermeta WHERE meta_key IN ('antispam_bee_reason');
DELETE FROM wp_termmeta WHERE meta_key IN ('antispam_bee_reason');
DELETE FROM wp_commentmeta WHERE meta_key IN ('antispam_bee_reason');

