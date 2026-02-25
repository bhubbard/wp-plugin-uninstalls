-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bpcapt_public', 'bpcapt_theme', 'bpcapt_private', 'bpcapt_language');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bp_ignore_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('bp_ignore_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('bp_ignore_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bp_ignore_notice');

