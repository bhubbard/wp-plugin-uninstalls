-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('turn_off_comments_installed', 'turn-off-comments-notification');

