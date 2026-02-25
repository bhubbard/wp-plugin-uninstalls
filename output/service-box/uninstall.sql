-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('servicebox_default_Settings', 'wpsm_service_b_review');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpsm_servicebox_data', 'wpsm_servicebox_count', 'Wpsm_Servicebox_Shortcode_Settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpsm_servicebox_data', 'wpsm_servicebox_count', 'Wpsm_Servicebox_Shortcode_Settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpsm_servicebox_data', 'wpsm_servicebox_count', 'Wpsm_Servicebox_Shortcode_Settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpsm_servicebox_data', 'wpsm_servicebox_count', 'Wpsm_Servicebox_Shortcode_Settings');

