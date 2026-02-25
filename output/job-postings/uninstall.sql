-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jobs_button_bg_color', 'jobs_button_bg_color_hover', 'jobs_button_text_color', 'jobs_heading_text_color', 'jobs_subheading_text_color', 'jobs_list_item_bg', 'jobs_list_item_border', 'jobs_content_heading_color', 'jobs_content_text_color', 'jobs_button_roundness', 'jobs_box_roundness', 'jobs_apply_advanced', 'jobs_selected_schema', 'jobs_sidebar_position', 'jobs_metrics_shareable', 'jobs_metrics_notice_seen_v2', 'jobs_file_location_notice_seen_v2', 'jobs_posts_per_page', 'jobs_preview_cta', 'jobs_schema_type', 'jobs_custom_css', 'jobs_company_logo');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('position_hiring_organization_name', 'position_logo', 'position_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('position_hiring_organization_name', 'position_logo', 'position_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('position_hiring_organization_name', 'position_logo', 'position_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('position_hiring_organization_name', 'position_logo', 'position_title');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'sort-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'sort-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'sort-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'sort-%';

