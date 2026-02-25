-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custom_ultimate_404_page_id', 'ultimate_404_redirect_rules');

