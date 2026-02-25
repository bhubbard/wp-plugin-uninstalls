-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hbagency_wp_website_id', 'hbagency_wp_website_placements', 'hbagency_wp_website_placements_cache_inarticle', 'hbagency_wp_enable_ads_txt', 'hbagency_wp_cmp', 'hbagency_wp_cls', 'hbagency_wp_website_script', 'hbagency_wp_has_cmp', 'hbagency_wp_website_status', 'hbagency_wp_website_status_detail', 'hbagency_wp_website_url', 'hbagency_wp_website_ads_txt', 'hbagency_wp_website_ext_id', 'hbagency_wp_website_ads_txt_additional_lines');
DELETE FROM wp_options WHERE option_name LIKE 'hbagency_wp_placement_%';
DELETE FROM wp_options WHERE option_name LIKE '%_type';
DELETE FROM wp_options WHERE option_name LIKE '%_pos';
DELETE FROM wp_options WHERE option_name LIKE '%_count';
DELETE FROM wp_options WHERE option_name LIKE '%_par';

