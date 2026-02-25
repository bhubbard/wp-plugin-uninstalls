-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mcw_enable_assets', 'mcw_enable_service_workers', 'mcw_enable_lazy_load');

