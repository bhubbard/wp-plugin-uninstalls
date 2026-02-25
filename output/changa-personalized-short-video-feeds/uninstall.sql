-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('changa_feeds', 'changa_generic_feed_appid', 'changa_generic_para', 'changa_needs_redirection');

