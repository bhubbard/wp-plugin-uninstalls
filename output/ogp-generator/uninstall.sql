-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nskw_ogp_id_select', 'nskw_ogp_img', 'nskw_ogp_app_id');

