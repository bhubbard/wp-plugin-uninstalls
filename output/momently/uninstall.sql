-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('momently_script', 'momently_site_id', 'momently_track_admin', 'momently_automatic_updates', 'momently_custom_taxonomy_cat', 'momently_lowercase_tags', 'momently_top_level_cat', 'momently_cats_as_tags');

