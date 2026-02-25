-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stdf_business_logo', 'stdf_settings_tab_checkbox', 'api_settings_tab_api_secret_key', 'api_settings_tab_api_key', 'stdf_settings_tab_notes', 'stdf_business_name', 'stdf_business_address', 'stdf_business_email', 'stdf_term_condition');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('steadfast_is_sent', 'steadfast_amount', 'stdf_delivery_status', 'steadfast_consignment_id', 'stdf_success_ratio');
DELETE FROM wp_usermeta WHERE meta_key IN ('steadfast_is_sent', 'steadfast_amount', 'stdf_delivery_status', 'steadfast_consignment_id', 'stdf_success_ratio');
DELETE FROM wp_termmeta WHERE meta_key IN ('steadfast_is_sent', 'steadfast_amount', 'stdf_delivery_status', 'steadfast_consignment_id', 'stdf_success_ratio');
DELETE FROM wp_commentmeta WHERE meta_key IN ('steadfast_is_sent', 'steadfast_amount', 'stdf_delivery_status', 'steadfast_consignment_id', 'stdf_success_ratio');

