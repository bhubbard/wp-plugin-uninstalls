-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpfkg_feed_key_status', 'feed_key', 'feed_key_status', 'wpfkg_feed_key');

