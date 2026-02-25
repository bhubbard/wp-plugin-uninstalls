-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('disable_page_comments', 'disable_post_comments', 'legacy_mode');

