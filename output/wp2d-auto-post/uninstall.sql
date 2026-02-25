-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp2d_plugin_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp2d_do_autopost');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp2d_do_autopost');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp2d_do_autopost');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp2d_do_autopost');

