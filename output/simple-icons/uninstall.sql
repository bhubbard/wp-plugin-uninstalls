-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simpleicons_version', '_simple_icons_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'simpleicons_icon_%';

