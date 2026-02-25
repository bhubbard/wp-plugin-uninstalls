-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('varihu_sync_processed', 'varihu_sync_total', 'varihu_sync_last_error', 'varihu_cache_last_sync', 'varihu_sync_running', 'woocommerce_currency_pos', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'varihu_activated', 'varihu_cache_sync_status', 'varihu_migration_version', 'varihu_cache_db_version', 'varihu_license_data', 'varihu_license_key', 'varihu_license_tier', 'varihu_license_expires', 'varihu_version', 'varihu_installed_date', 'varihu_security_incident_hmac_validation_failed');
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';
DELETE FROM wp_options WHERE option_name LIKE 'varihu_security_incident_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tax_class', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tax_class', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tax_class', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tax_class', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%';

