-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf_cc_settings_lazy_load', 'cf_cc_settings_visited_pages', 'cf_cc_settings_remove_data_on_uninstall', 'cf_cc_settings_geoip_provider', 'cf_cc_settings_google_maps_api_key', 'cf_cc_settings_geoip_provider_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cf_cc_trigger_default', 'cf_cc_trigger_default_metadata', 'cf_cc_conditions');
DELETE FROM wp_usermeta WHERE meta_key IN ('cf_cc_trigger_default', 'cf_cc_trigger_default_metadata', 'cf_cc_conditions');
DELETE FROM wp_termmeta WHERE meta_key IN ('cf_cc_trigger_default', 'cf_cc_trigger_default_metadata', 'cf_cc_conditions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cf_cc_trigger_default', 'cf_cc_trigger_default_metadata', 'cf_cc_conditions');

