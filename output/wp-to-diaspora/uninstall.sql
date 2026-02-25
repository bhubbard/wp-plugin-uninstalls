-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_to_diaspora_settings', 'wp2d_no_js_force_refetch');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_to_diaspora', '_wp_to_diaspora_post_history', '_wp_to_diaspora_post_error');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_to_diaspora', '_wp_to_diaspora_post_history', '_wp_to_diaspora_post_error');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_to_diaspora', '_wp_to_diaspora_post_history', '_wp_to_diaspora_post_error');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_to_diaspora', '_wp_to_diaspora_post_history', '_wp_to_diaspora_post_error');

