-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('raven_analytics_uastring');
DELETE FROM wp_options WHERE option_name LIKE 'analytics_%';

