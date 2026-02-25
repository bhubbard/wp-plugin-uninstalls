-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_activecampaign_settings', 'settings_activecampaign', 'es_wc_activecampaign_errors');
DELETE FROM wp_options WHERE option_name LIKE 'es_wc_activecampaign_list_%';
DELETE FROM wp_options WHERE option_name LIKE 'es_wc_activecampaign_tags_list_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('es_wc_activecampaign_opt_in');
DELETE FROM wp_usermeta WHERE meta_key IN ('es_wc_activecampaign_opt_in');
DELETE FROM wp_termmeta WHERE meta_key IN ('es_wc_activecampaign_opt_in');
DELETE FROM wp_commentmeta WHERE meta_key IN ('es_wc_activecampaign_opt_in');

