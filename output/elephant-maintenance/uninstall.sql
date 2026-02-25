-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elephantm_maintenance_enabled', 'elephantm_maintenance_title', 'elephantm_maintenance_message', 'elephantm_maintenance_phone', 'elephantm_maintenance_social', 'elephantm_maintenance_bg');

