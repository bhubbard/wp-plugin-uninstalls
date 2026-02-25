-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lead_data', 'lead_IP', '_elementor_global_widget_included_posts', '_elementor_data', '_elementor_template_widget_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('lead_data', 'lead_IP', '_elementor_global_widget_included_posts', '_elementor_data', '_elementor_template_widget_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('lead_data', 'lead_IP', '_elementor_global_widget_included_posts', '_elementor_data', '_elementor_template_widget_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lead_data', 'lead_IP', '_elementor_global_widget_included_posts', '_elementor_data', '_elementor_template_widget_type');

