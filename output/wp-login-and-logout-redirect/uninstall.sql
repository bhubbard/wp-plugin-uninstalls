-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wplalr_login_redirect', 'wplalr_logout_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wplalr_last_login');
DELETE FROM wp_usermeta WHERE meta_key IN ('wplalr_last_login');
DELETE FROM wp_termmeta WHERE meta_key IN ('wplalr_last_login');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wplalr_last_login');

