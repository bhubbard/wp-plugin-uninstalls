-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('know--settings-group', 'know__server_url', 'know__api_key', 'know__api_secret');

