-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hw4wp_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp-hotwords_custom_color', 'wp-hotwords');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp-hotwords_custom_color', 'wp-hotwords');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp-hotwords_custom_color', 'wp-hotwords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp-hotwords_custom_color', 'wp-hotwords');

