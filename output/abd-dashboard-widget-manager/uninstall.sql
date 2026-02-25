-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('abd_dwm_user_roles', 'abd_dwm_show_widgets', 'abd_dwm_widget_content', 'abd_dwm_widget_title', 'abd_dwm_avail_dashboard_widgets');

