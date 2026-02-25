-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('FLYING_ANALYTICS_VERSION', 'flying_analytics_method', 'flying_analytics_disable_on_login', 'flying_analytics_id');

