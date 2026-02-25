-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('LTK_OAUTH_TOKEN', 'LTK_ID');

