-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_additionalServices';
DELETE FROM wp_options WHERE option_name LIKE '%_frontend_label';
DELETE FROM wp_options WHERE option_name LIKE '%_frontend_description';
DELETE FROM wp_options WHERE option_name LIKE '%_min';
DELETE FROM wp_options WHERE option_name LIKE '%_cost';
DELETE FROM wp_options WHERE option_name LIKE '%_cost_type';
DELETE FROM wp_options WHERE option_name LIKE '%_apikey';
DELETE FROM wp_options WHERE option_name LIKE '%_conf';
DELETE FROM wp_options WHERE option_name LIKE '%_brand';
DELETE FROM wp_options WHERE option_name LIKE '%_dropoff';
DELETE FROM wp_options WHERE option_name LIKE '%_dropoff_min';
DELETE FROM wp_options WHERE option_name LIKE '%_dropoff_cost';
DELETE FROM wp_options WHERE option_name LIKE '%_dropoff_cost_type';
DELETE FROM wp_options WHERE option_name LIKE '%_apply';
DELETE FROM wp_options WHERE option_name LIKE '%_area';
DELETE FROM wp_options WHERE option_name LIKE '%_limit';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('reshark_dropoffCode', 'reshark_courierConfiguration', '_order_weight', '_order_dimensions');
DELETE FROM wp_usermeta WHERE meta_key IN ('reshark_dropoffCode', 'reshark_courierConfiguration', '_order_weight', '_order_dimensions');
DELETE FROM wp_termmeta WHERE meta_key IN ('reshark_dropoffCode', 'reshark_courierConfiguration', '_order_weight', '_order_dimensions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('reshark_dropoffCode', 'reshark_courierConfiguration', '_order_weight', '_order_dimensions');

