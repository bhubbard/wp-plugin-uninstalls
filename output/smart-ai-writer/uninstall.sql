-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('saiw_openai_key', 'saiw_pexels_key', 'saiw_pixabay_key', 'saiw_openai_model', 'saiw_language', 'saiw_show_footer');

