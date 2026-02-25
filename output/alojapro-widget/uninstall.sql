-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alojapro_settings', 'alojapro_config', 'alojapro_integration', 'alojapro_comments', 'alojapro_offers');

