-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('citw_url_schema', 'citw_enable_img_alt', 'icl_sitepress_settings');

