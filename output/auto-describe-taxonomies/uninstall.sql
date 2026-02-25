-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adtaxonomies_tags_described', 'adtaxonomies_cats_described', 'adtaxonomies_tags_exclude', 'adtaxonomies_cats_exclude', 'adtaxonomies_tags_advertise');

