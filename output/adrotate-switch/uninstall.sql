-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adinj_options', 'plugin_advman_ads', 'bannerman', 'administer_post_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attached_file', 'akp_text', 'akp_adsense_code', 'akp_html5_height', 'akp_html5_width', 'akp_html5_url', 'administer_positions', 'administer_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attached_file', 'akp_text', 'akp_adsense_code', 'akp_html5_height', 'akp_html5_width', 'akp_html5_url', 'administer_positions', 'administer_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attached_file', 'akp_text', 'akp_adsense_code', 'akp_html5_height', 'akp_html5_width', 'akp_html5_url', 'administer_positions', 'administer_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attached_file', 'akp_text', 'akp_adsense_code', 'akp_html5_height', 'akp_html5_width', 'akp_html5_url', 'administer_positions', 'administer_content');

