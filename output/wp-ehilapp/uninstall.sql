-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_ehilapp_options_cat', 'wp_ehilapp_options_tag', 'wp_ehilapp_options_cat_inv', 'wp_ehilapp_options_tag_inv', 'wp_ehilapp_options');

