-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_leads_view_role', 'elementor_leads_edit_role', 'elementor_leads_enable_tracking');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_lenix_lead_source_data', '_elementor_template_widget_type', '_elementor_global_widget_included_posts', '_elementor_data', 'form_slug', 'post_id', 'lead_data', 'response_history', 'status_color', 'lead_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_lenix_lead_source_data', '_elementor_template_widget_type', '_elementor_global_widget_included_posts', '_elementor_data', 'form_slug', 'post_id', 'lead_data', 'response_history', 'status_color', 'lead_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_lenix_lead_source_data', '_elementor_template_widget_type', '_elementor_global_widget_included_posts', '_elementor_data', 'form_slug', 'post_id', 'lead_data', 'response_history', 'status_color', 'lead_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_lenix_lead_source_data', '_elementor_template_widget_type', '_elementor_global_widget_included_posts', '_elementor_data', 'form_slug', 'post_id', 'lead_data', 'response_history', 'status_color', 'lead_status');

