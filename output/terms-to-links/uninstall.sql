-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('term2link_times', 'term2link_taxonomies', 'terms_to_links');

