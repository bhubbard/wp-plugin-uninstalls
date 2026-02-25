-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('roam_update_token', 'roam_graph_content', 'roam_graph_name', 'roam_graph_update');

