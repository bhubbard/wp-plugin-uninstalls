-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dbxe_rewrite_version');
DELETE FROM wp_options WHERE option_name LIKE 'dbxe_oauth_state_%';

