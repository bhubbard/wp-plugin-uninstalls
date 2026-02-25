-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dr_sara_search_d_post', 'dr_sara_search_total', 'dr_sara_search_thumbnail', 'dr_sara_search_title');
DELETE FROM wp_options WHERE option_name LIKE 'dr_sara_search_%';

