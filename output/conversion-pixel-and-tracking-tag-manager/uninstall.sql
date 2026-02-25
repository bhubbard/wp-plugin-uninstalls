-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cpttm_page_type', 'cpttm_page_date', 'cpttm_page_author', 'cpttm_taxonomies', 'cpttm_events_triggers', 'cpttm_head_script', 'cpttm_body_script', 'cpttm_footer_script', 'cpttm_head_script_enabled', 'cpttm_body_script_enabled', 'cpttm_footer_script_enabled');

