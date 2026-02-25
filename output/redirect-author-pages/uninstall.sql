-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_redirect_author_pages_redirect_non_authors', 'wp_redirect_author_pages_activate', 'wp_redirect_author_pages_adminonly', 'wp_redirect_author_pages_status', 'wp_redirect_author_pages_destination', 'wp_redirect_author_pages_authorlink');

