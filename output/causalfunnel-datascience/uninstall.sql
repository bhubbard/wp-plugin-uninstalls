-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'causalfunnel_enable_analytics', 'causalfunnel_enable_data_collection', 'causalfunnel_consent_version', 'causalfunnel_consent_date');

