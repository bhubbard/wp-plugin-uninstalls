-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('edd_settings', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('delivery_date_simple', 'delivery_date_var');
DELETE FROM wp_usermeta WHERE meta_key IN ('delivery_date_simple', 'delivery_date_var');
DELETE FROM wp_termmeta WHERE meta_key IN ('delivery_date_simple', 'delivery_date_var');
DELETE FROM wp_commentmeta WHERE meta_key IN ('delivery_date_simple', 'delivery_date_var');

