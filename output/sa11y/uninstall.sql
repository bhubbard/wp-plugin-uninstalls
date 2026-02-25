-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sa11y_settings', 'sa11y_network_target', 'sa11y_network_developer_checks', 'sa11y_network_readability', 'sa11y_network_readability_target', 'sa11y_network_readability_ignore', 'sa11y_network_region_ignore', 'sa11y_network_contrast_ignore', 'sa11y_network_outline_ignore', 'sa11y_network_header_ignore', 'sa11y_network_image_ignore', 'sa11y_network_link_ignore', 'sa11y_network_link_ignore_span', 'sa11y_network_link_flag', 'sa11y_network_noRun', 'sa11y_network_shadow_components', 'sa11y_network_extra_props', 'sa11y_edit_image_link', 'sa11y_network_panel_position', 'sa11y_network_form_labels', 'sa11y_network_contrast', 'sa11y_network_links_advanced', 'sa11y_network_colour_filter', 'sa11y_network_all_checks');

