-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('weo_llms_intro', 'weo_llms_outro', 'weo_llms_post_types', 'weo_llms_add_to_robots', 'weo_llms_content');

