-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('static_maps_editor_uid', 'static_maps_editor_privacy_policy_accepted', 'static_maps_editor_tos_accepted', 'static_maps_editor_menu', 'static_maps_editor_size_width', 'static_maps_editor_size_height', 'static_maps_editor_activated_static_maps_editor', 'static_maps_editor_uid_fetch_error', 'static_maps_editor_uid_fetch_error_messages');

