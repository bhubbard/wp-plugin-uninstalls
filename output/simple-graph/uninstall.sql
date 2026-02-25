-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pjm_graph_options', 'pjm_graph_title', 'pjm_graph_width', 'pjm_graph_height', 'pjm_graph_bgcolor', 'pjm_graph_fgcolor', 'pjm_graph_linecolor', 'pjm_graph_bglinecolor', 'pjm_graph_trendcolor', 'pjm_graph_datefmt');

