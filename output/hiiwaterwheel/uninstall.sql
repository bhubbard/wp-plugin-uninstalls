-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hiiwaterwheel_version', '_hiiwaterwheel_activation_redirect', 'hiiwaterwheel_addons_html');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'hii_ww_slide');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'hii_ww_slide');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'hii_ww_slide');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'hii_ww_slide');

