-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('proai_txt_manager_enable_llms_txt', 'proai_txt_manager_enable_robots_txt', 'proai_txt_manager_auto_regenerate', 'proai_txt_manager_llms_custom_content', 'proai_txt_manager_robots_custom_rules', 'proai_txt_manager_include_sitemap_in_robots', 'proai_txt_manager_disallow_admin', 'proai_txt_manager_disallow_wp_includes');
DELETE FROM wp_options WHERE option_name LIKE 'proai_txt_manager_%';

