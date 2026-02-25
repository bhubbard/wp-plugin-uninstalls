-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('profileframegen_frame_id', 'profileframegen_zoom_controls', 'profileframegen_reset_position', 'profileframegen_rotate_controls', 'profileframegen_bokeh_toggle', 'profileframegen_gravatar_field', 'profileframegen_show_instructions', 'profileframegen_media_library_upload', 'profileframegen_media_upload_loggedin_only', 'profileframegen_controls_position', 'profileframegen_instructions_text', 'profileframegen_background_color', 'profileframegen_first_save_date', 'profileframegen_already_donated', 'profileframegen_dismissal_count', 'profileframegen_notice_last_dismissed', 'profileframegen_migration_completed_time', 'profileframegen_dismissed_post_migration_notice', 'profileframegen_ui_version', 'profileframegen_plugin_activated');

