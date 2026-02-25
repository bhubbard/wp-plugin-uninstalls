-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bmae_settings', 'brozzme_plugins_api_results');
DELETE FROM wp_options WHERE option_name LIKE 'brozzme_plugins_api_version_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bmae_on_demand_status', 'bmae_sent_before');
DELETE FROM wp_usermeta WHERE meta_key IN ('bmae_on_demand_status', 'bmae_sent_before');
DELETE FROM wp_termmeta WHERE meta_key IN ('bmae_on_demand_status', 'bmae_sent_before');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bmae_on_demand_status', 'bmae_sent_before');

