-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lsdaddkml_installed_at');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lsd_kml', 'lsd_feed', 'lsd_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('lsd_kml', 'lsd_feed', 'lsd_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('lsd_kml', 'lsd_feed', 'lsd_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lsd_kml', 'lsd_feed', 'lsd_type');

