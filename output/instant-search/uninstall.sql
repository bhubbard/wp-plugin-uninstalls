-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('instant_search_post_types', 'instant_search_display_style', 'instant_search_placeholder', 'instant_search_form_width', 'instant_search_form_width2', 'instant_search_method', 'instant_search_enable_voice_search', 'instant_search_results_per_page');

