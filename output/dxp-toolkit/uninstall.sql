-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf-cc-licensing-key', 'cf_cc_settings_visited_pages', 'cf_cc_settings_remove_data_on_uninstall', 'cf_cc_addon_settings_addon_google', 'dxptoolkit_optin', 'dxptoolkit_enable_reporting_feature', 'cf_cc_settings_geoip_provider', 'dxptoolkit_last_ping', 'dxptoolkit_optin_notice', 'dxptoolkit_telemetry_notice', 'dxptoolkit_activation_date', 'active_sitewide_plugins', 'pantheon_ei_gtm_code');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cf_cc_trigger_default', 'cf_cc_conditions');
DELETE FROM wp_usermeta WHERE meta_key IN ('cf_cc_trigger_default', 'cf_cc_conditions');
DELETE FROM wp_termmeta WHERE meta_key IN ('cf_cc_trigger_default', 'cf_cc_conditions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cf_cc_trigger_default', 'cf_cc_conditions');

