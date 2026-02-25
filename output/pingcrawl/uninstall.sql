-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pingcrawl_frequency', 'pingcrawl_max_google_hits', 'pingcrawl_max_pings_per_tag', 'pingcrawl_max_tags');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pingcrawl_pinged', 'pingcrawl_force');
DELETE FROM wp_usermeta WHERE meta_key IN ('pingcrawl_pinged', 'pingcrawl_force');
DELETE FROM wp_termmeta WHERE meta_key IN ('pingcrawl_pinged', 'pingcrawl_force');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pingcrawl_pinged', 'pingcrawl_force');

