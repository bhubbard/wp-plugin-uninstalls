-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mpwi_design_settings', 'mpwi_access_token', 'mpwi_gtm_container_id', 'mpwi_enable_gtm', 'mpwi_settings', 'mpwi_flash_message');

