-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('arc_publication_id', 'arc_api_key', 'redirect_page');

