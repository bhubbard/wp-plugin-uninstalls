-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chcl_hashes', 'locked_items', 'chcl_site_key', 'chcl_secret_key', 'chcl_color_setting', 'chcl_bootstrap_button');

