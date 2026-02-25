-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%___options';
DELETE FROM wp_options WHERE option_name LIKE 'kjg_pwb_social_graph_post_%';

