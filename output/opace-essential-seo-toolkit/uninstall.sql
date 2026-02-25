-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eseot_categories', 'eseot_sources', 'eseot_version', 'eseot_post_types');

