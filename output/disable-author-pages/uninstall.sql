-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('disable_author_pages_redirect_non_authors', 'disable_author_pages_activate', 'disable_author_pages_adminonly', 'disable_author_pages_status', 'disable_author_pages_destination', 'disable_author_pages_authorlink');

