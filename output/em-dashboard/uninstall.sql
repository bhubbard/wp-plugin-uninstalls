-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('em_dashboard_force_easy_capability', 'em_dashboard_load_easy', 'em_dashboard_force_easy', 'em_dashboard_color_scheme', 'em_dashboard_em_styles', 'em_dashboard_color_picker', 'em_dashboard_nodes_allowed', 'em_dashboard_nodes_delete', 'em_dashboard_nodes_sub_delete', 'em_dashboard_nodes_meta_dashboard', 'em_dashboard_nodes_meta_link', 'em_dashboard_nodes_meta_post', 'em_dashboard_nodes_meta_plugin', 'em_dashboard_em_fonts', 'em_dashboard_easy_mode');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('em_dashboard_easy_mode');
DELETE FROM wp_usermeta WHERE meta_key IN ('em_dashboard_easy_mode');
DELETE FROM wp_termmeta WHERE meta_key IN ('em_dashboard_easy_mode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('em_dashboard_easy_mode');

