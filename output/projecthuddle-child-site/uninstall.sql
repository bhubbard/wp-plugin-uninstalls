-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ph_child_allow_guests', 'ph_child_enabled_comment_roles', 'dismissed-ph-flywheel-child', 'dismissed-ph-wp-engine-child', 'ph_child_access_token', 'ph_child_admin', 'ph_child_plugin_link', 'ph_child_plugin_author', 'ph_child_plugin_author_url', 'ph_child_plugin_name', 'ph_child_plugin_description', 'ph_child_installed', 'ph_child_manual_connection', 'ph_child_parent_url', 'ph_child_id', 'ph_child_api_key', 'ph_child_signature', 'ph_child_project_id', 'ph_child_admin_enabled', 'ph_child_connection_status', 'ph_child_commenters');
DELETE FROM wp_options WHERE option_name LIKE 'ph_child_%';

