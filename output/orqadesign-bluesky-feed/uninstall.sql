-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bluesky_handle', 'bluesky_email', 'bluesky_app_password', 'bluesky_display_name', 'bluesky_avatar_url');

