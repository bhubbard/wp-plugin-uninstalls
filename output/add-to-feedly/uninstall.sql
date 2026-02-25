-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ADD_TO_FEEDLY_active', 'ADD_TO_FEEDLY_feed_url', 'ADD_TO_FEEDLY_customtext', 'ADD_TO_FEEDLY_position', 'ADD_TO_FEEDLY_size');

