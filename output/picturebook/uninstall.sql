-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('links_recently_updated_prepend', 'links_updated_date_format', 'links_recently_updated_append');

