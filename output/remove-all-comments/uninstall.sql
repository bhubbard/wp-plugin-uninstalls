-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('remove_all_is_page', 'remove_all_is_post', 'remove_all_is_all');

