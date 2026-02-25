-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pixelcode', 'wiser_enable_for_wp', 'apikey', 'pixeltag', 'wiser_enable_for_edd');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rating');

