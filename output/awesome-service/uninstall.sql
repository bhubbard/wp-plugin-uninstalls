-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awesome_service_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'awesome_service_pl_ser_color', 'awesome_service_pl_icon');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'awesome_service_pl_ser_color', 'awesome_service_pl_icon');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'awesome_service_pl_ser_color', 'awesome_service_pl_icon');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'awesome_service_pl_ser_color', 'awesome_service_pl_icon');

