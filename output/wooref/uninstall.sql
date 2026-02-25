-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wooref_cookie_expire', 'wooref_trackme', 'wooref_track_admin_email', 'wooref_track_user_email');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wooref_site_ref');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wooref_site_ref');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wooref_site_ref');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wooref_site_ref');

