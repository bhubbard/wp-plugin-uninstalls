-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple_cta_settings', 'simple_cta_impressions', 'simple_cta_clicks', 'simple_cta_timestamp');

