-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('icwcu_custom_services_title', 'icwcu_custom_radioservices_title');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('icwcu_custom_services', 'icwcu_custom_servicesradio', 'icwcu_custom_services_title', 'icwcu_custom_radioservices_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('icwcu_custom_services', 'icwcu_custom_servicesradio', 'icwcu_custom_services_title', 'icwcu_custom_radioservices_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('icwcu_custom_services', 'icwcu_custom_servicesradio', 'icwcu_custom_services_title', 'icwcu_custom_radioservices_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('icwcu_custom_services', 'icwcu_custom_servicesradio', 'icwcu_custom_services_title', 'icwcu_custom_radioservices_title');

