-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quick_301_redirects_', 'redirection_301', 'quick_301_redirects_plugins_page');

