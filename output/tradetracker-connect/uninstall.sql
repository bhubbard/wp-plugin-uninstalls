-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tradetracker_connect_campaign_options', 'tradetracker_connect_webservice_options', 'tradetracker_connect_directlinking_options', 'tradetracker_connect_feed_options', 'tradetracker_connect_feed_generator', 'tradetracker_connect_scheduled_events');

