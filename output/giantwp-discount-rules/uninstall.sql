-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('giantwp_flatpercentage_discount', 'giantwp_bogo_discount', 'giantwp_shipping_discount', 'giantwp_bxgy_discount', 'giantwp_bulk_discount', 'giantwp_discountrules_settings', 'aio_bogo_discount', 'aio_bxgy_discount', 'GWPDR_installation_time', 'GWPDR_version', 'gwpdr_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gwpdr_bogo_applied_rules');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gwpdr_bogo_applied_rules');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gwpdr_bogo_applied_rules');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gwpdr_bogo_applied_rules');

