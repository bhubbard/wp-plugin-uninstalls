-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lsdaddads_installed_at', 'lsd_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lsd_ad');
DELETE FROM wp_usermeta WHERE meta_key IN ('lsd_ad');
DELETE FROM wp_termmeta WHERE meta_key IN ('lsd_ad');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lsd_ad');

