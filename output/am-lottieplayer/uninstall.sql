-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'am_lottieplayer_pro_load_light', 'am_deactivated_notice_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_source_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_source_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_source_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_source_url');

