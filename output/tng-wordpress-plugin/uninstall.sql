-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mbtng_path', 'mbtng_url', 'mbtng_wordpress_page', 'mbtng_redirect_login', 'mbtng_integrate_logins', 'mbtng_globalvars', 'mbtng_timestamp', 'mbtng_url_to_admin', 'mbtng_use_wordpress_homepage');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tng_user_id', 'nickname', 'wp_user_level', 'wp_capabilities');
DELETE FROM wp_usermeta WHERE meta_key IN ('tng_user_id', 'nickname', 'wp_user_level', 'wp_capabilities');
DELETE FROM wp_termmeta WHERE meta_key IN ('tng_user_id', 'nickname', 'wp_user_level', 'wp_capabilities');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tng_user_id', 'nickname', 'wp_user_level', 'wp_capabilities');

