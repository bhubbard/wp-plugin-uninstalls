-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_cc_version', 'wp_cc_license', 'wp_cc_auto_text', 'wp_cc_auto_image', 'wp_cc_auto_metadata');

