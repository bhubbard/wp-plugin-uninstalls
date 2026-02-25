-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wploti_maintenance_redirect_version', 'wploti_activation_notice', 'wploti_animation', 'wploti_status', 'wploti_notes_notice', 'wploti_message', 'wploti_header_type', 'wploti_whitelisted_roles', 'wploti_whitelisted_users', 'wploti_upload_animation');

