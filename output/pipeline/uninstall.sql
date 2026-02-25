-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pipe_line_plugin_options', 'pipe_line_render_options', 'ldpipe_wizard_config');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pl_step_url', 'pl_slug', 'pl_funnel_name', 'pl_funnel_id', 'pl_step_id', 'pl_step_name', 'pl_display_method', 'pl_include_tracking_code', 'pl_step_meta', 'pl_step_trackingCode', 'pl_funnel_tracking_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('pl_step_url', 'pl_slug', 'pl_funnel_name', 'pl_funnel_id', 'pl_step_id', 'pl_step_name', 'pl_display_method', 'pl_include_tracking_code', 'pl_step_meta', 'pl_step_trackingCode', 'pl_funnel_tracking_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('pl_step_url', 'pl_slug', 'pl_funnel_name', 'pl_funnel_id', 'pl_step_id', 'pl_step_name', 'pl_display_method', 'pl_include_tracking_code', 'pl_step_meta', 'pl_step_trackingCode', 'pl_funnel_tracking_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pl_step_url', 'pl_slug', 'pl_funnel_name', 'pl_funnel_id', 'pl_step_id', 'pl_step_name', 'pl_display_method', 'pl_include_tracking_code', 'pl_step_meta', 'pl_step_trackingCode', 'pl_funnel_tracking_code');

