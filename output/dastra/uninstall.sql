-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('workspace_id', 'widget_id', 'public_key', 'track_user');

