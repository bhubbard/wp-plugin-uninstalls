-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chron0striggeuss_active', 'chron0striggeuss_posts_interval', 'chron0striggeuss_posts_backdate', 'chron0striggeuss_pages_interval', 'chron0striggeuss_pages_backdate', 'chron0striggeuss_stored_post_interval', 'chron0striggeuss_stored_page_interval');

