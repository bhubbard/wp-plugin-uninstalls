-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pagetest_auth_token', 'pagetest_cached_script', 'pagetest_selected_posts', 'pagetest_selected_pages');

