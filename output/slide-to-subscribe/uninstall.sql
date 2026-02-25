-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('s2s_widget_id', 's2s_widget_height', 's2s_widget_width', 's2s_display_posts', 's2s_display_floating');

