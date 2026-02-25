-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpp_dismissed', 'wpp_settings', 'wpp_sponsors_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('date_expires');
DELETE FROM wp_usermeta WHERE meta_key IN ('date_expires');
DELETE FROM wp_termmeta WHERE meta_key IN ('date_expires');
DELETE FROM wp_commentmeta WHERE meta_key IN ('date_expires');

