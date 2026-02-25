-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bedp_disable_all_posts', 'bedp_disable_all_pages', 'bedp_disable_specific_pages', 'bedp_disable_all');

