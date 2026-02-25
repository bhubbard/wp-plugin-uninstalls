-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('SFI_NIRUS_PNG_SITE_LOGO_PATH', 'SFI_NIRUS_PNG_FOLDER_PATH', 'SFI_NIRUS_TWT_OPTION', 'SFI_NIRUS_FB_OPTION');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sfi-nirus-featured-png', 'sfi-nirus-image-hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('sfi-nirus-featured-png', 'sfi-nirus-image-hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('sfi-nirus-featured-png', 'sfi-nirus-image-hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sfi-nirus-featured-png', 'sfi-nirus-image-hash');

