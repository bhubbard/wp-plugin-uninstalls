-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('g_woocoupons_configs');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gna_available_day_of_week');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gna_available_day_of_week');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gna_available_day_of_week');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gna_available_day_of_week');

