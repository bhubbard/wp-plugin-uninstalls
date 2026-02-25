-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('runthings_ttc_selected_taxonomies', 'runthings_ttc_height_settings', 'runthings_ttc_show_links', 'runthings_ttc_allow_term_create', 'runthings_ttc_search_settings');

