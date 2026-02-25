-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ec_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ec_head_code', '_ec_footer_code', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ec_head_code', '_ec_footer_code', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ec_head_code', '_ec_footer_code', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ec_head_code', '_ec_footer_code', '_wp_page_template');

