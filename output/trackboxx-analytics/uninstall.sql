-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trackboxx_tracking_id', 'trackboxx_public_url', 'trackboxx_optout_text', 'trackboxx_optout_key', 'website_type');

