-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('suspend_automatic_detection_of_residential_addresses', 'en_woo_addons_auto_residential_detecion_flag', 'en_trial_residential_flag', 'auto_residential_delivery_plan_auto_renew', 'en_woo_addons_liftgate_with_auto_residential', 'en_default_unconfirmed_address_types_to', 'en_default_missing_street_address_types_to', 'residential_delivery_options_disclosure_types_to', 'eniture_not_show_rates_for_pobox_addresses', 'en_woo_addons_liftgate_delivery_as_option');
DELETE FROM wp_options WHERE option_name LIKE 'en_woo_addons_auto_residential_detecion_flag_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('en_rad_addresses');
DELETE FROM wp_usermeta WHERE meta_key IN ('en_rad_addresses');
DELETE FROM wp_termmeta WHERE meta_key IN ('en_rad_addresses');
DELETE FROM wp_commentmeta WHERE meta_key IN ('en_rad_addresses');

