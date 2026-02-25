-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_gf_szamlazz_pro_enabled', '_gf_szamlazz_pro_key', '_gf_szamlazz_pro_email', '_gf_szamlazz_error', '_gf_szamlazz_cookie_name', 'gf_szamlazz_mnb_arfolyam_kozep');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gf_szamlazz_admin_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('gf_szamlazz_admin_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('gf_szamlazz_admin_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gf_szamlazz_admin_notices');

