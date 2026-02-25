-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('myprefix_image_id', 'koptional_scrolling_overlays_db_version');

