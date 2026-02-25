-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rollback_settings', 'core_rollback', '_core_rollback', '_core_rollback_offers');

