-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simpli_option_name', 'arrows', 'sic_arrows');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sic_title_checkbox');
DELETE FROM wp_usermeta WHERE meta_key IN ('sic_title_checkbox');
DELETE FROM wp_termmeta WHERE meta_key IN ('sic_title_checkbox');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sic_title_checkbox');

