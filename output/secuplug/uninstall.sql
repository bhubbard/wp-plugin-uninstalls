-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('secuplug_settings', 'securefusion_settings', 'bad_bots_list', 'securefusion_ssl_cert_data');

