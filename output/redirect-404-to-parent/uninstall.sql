-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('moove_404_redirect_options', 'moove_404_redirect_statistics', 'moove_404_general_options', 'moove_options', 'moove_404_redirect_activate');

