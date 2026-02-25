-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xs-mcs-options', 'cron', 'woocommerce_currency');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('xs_mcs_curr_data', 'value', 'exchange_fee', 'updated_on', 'auto_update', 'manualy_updated', 'auto_updated', 'xs_mcs_switch_currency');
DELETE FROM wp_usermeta WHERE meta_key IN ('xs_mcs_curr_data', 'value', 'exchange_fee', 'updated_on', 'auto_update', 'manualy_updated', 'auto_updated', 'xs_mcs_switch_currency');
DELETE FROM wp_termmeta WHERE meta_key IN ('xs_mcs_curr_data', 'value', 'exchange_fee', 'updated_on', 'auto_update', 'manualy_updated', 'auto_updated', 'xs_mcs_switch_currency');
DELETE FROM wp_commentmeta WHERE meta_key IN ('xs_mcs_curr_data', 'value', 'exchange_fee', 'updated_on', 'auto_update', 'manualy_updated', 'auto_updated', 'xs_mcs_switch_currency');

