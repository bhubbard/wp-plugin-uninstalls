-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'pricerunner_feed_hash', 'pricerunner_feed_active', 'pricerunner_feed_url', 'pricerunner_contact_domain', 'pricerunner_contact_name', 'pricerunner_contact_email', 'pricerunner_contact_phone');

