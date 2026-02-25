-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_photos_feed_tookapic_data', 'widget_photo_feed_tookapic_widget');

