-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('r34ecre_days', 'r34ecre_max_events', 'r34ecre_images_all', 'r34ecre_image_size', 'r34ecre_venue_link');

