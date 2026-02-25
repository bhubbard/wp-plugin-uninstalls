-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cron', 'lead_connector_version', 'doing_cron');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_edit_mode', 'lc_step_url', 'lc_slug', 'lc_funnel_name', 'lc_funnel_id', 'lc_step_id', 'lc_step_name', 'lc_display_method', 'lc_include_tracking_code', 'lc_use_site_favicon', 'lc_include_wp_headers_and_footers', 'lc_step_meta', 'lc_step_trackingCode', 'lc_funnel_tracking_code', '_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_version', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_edit_mode', 'lc_step_url', 'lc_slug', 'lc_funnel_name', 'lc_funnel_id', 'lc_step_id', 'lc_step_name', 'lc_display_method', 'lc_include_tracking_code', 'lc_use_site_favicon', 'lc_include_wp_headers_and_footers', 'lc_step_meta', 'lc_step_trackingCode', 'lc_funnel_tracking_code', '_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_version', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_edit_mode', 'lc_step_url', 'lc_slug', 'lc_funnel_name', 'lc_funnel_id', 'lc_step_id', 'lc_step_name', 'lc_display_method', 'lc_include_tracking_code', 'lc_use_site_favicon', 'lc_include_wp_headers_and_footers', 'lc_step_meta', 'lc_step_trackingCode', 'lc_funnel_tracking_code', '_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_version', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_edit_mode', 'lc_step_url', 'lc_slug', 'lc_funnel_name', 'lc_funnel_id', 'lc_step_id', 'lc_step_name', 'lc_display_method', 'lc_include_tracking_code', 'lc_use_site_favicon', 'lc_include_wp_headers_and_footers', 'lc_step_meta', 'lc_step_trackingCode', 'lc_funnel_tracking_code', '_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_version', '_wp_page_template');

