-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_onboarded', 'elementor_google_maps_api_key', 'elementor_connect_site_key', 'elementor_core_campaign', '_wc_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_conditions');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_conditions');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_conditions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_conditions');

