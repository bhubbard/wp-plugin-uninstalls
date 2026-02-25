-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('utmm_utm_id', 'utmm_utm_source', 'utmm_utm_medium', 'utmm_utm_campaign', 'utmm_utm_term', 'utmm_utm_content', 'utmm_version', 'utmm_data_migrated', 'utmm_installed', 'utmm_migration_page', 'utmm_flash_notices');
DELETE FROM wp_options WHERE option_name LIKE 'utmm_%';

