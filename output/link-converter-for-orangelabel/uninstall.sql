-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('olc_awin_id', 'olc_zanox_id', 'olc_disabled_categories');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_olc_disabled_urls', '_olc_disabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('_olc_disabled_urls', '_olc_disabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('_olc_disabled_urls', '_olc_disabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_olc_disabled_urls', '_olc_disabled');

