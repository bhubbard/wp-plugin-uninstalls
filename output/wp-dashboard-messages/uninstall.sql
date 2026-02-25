-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dashboard-messages_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dashboard_expires', '_dashboard_expires_period', '_dashboard_layout', '_dashboard_color', '_dashboard_icon', '_dashboard_context', '_dashboard_priority', '_dashboard_expires_gmt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dashboard_expires', '_dashboard_expires_period', '_dashboard_layout', '_dashboard_color', '_dashboard_icon', '_dashboard_context', '_dashboard_priority', '_dashboard_expires_gmt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dashboard_expires', '_dashboard_expires_period', '_dashboard_layout', '_dashboard_color', '_dashboard_icon', '_dashboard_context', '_dashboard_priority', '_dashboard_expires_gmt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dashboard_expires', '_dashboard_expires_period', '_dashboard_layout', '_dashboard_color', '_dashboard_icon', '_dashboard_context', '_dashboard_priority', '_dashboard_expires_gmt');

