-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpcsm_product_random_number_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpcsm_activate', 'wpcsm_example', 'wpcsm_location', 'wpcsm_conditions', 'wpcsm_custom_location', 'wpcsm_container', 'wpcsm_extra_classes', 'wpcsm_design', 'wpcsm_custom_css', 'wpcsm_css');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpcsm_activate', 'wpcsm_example', 'wpcsm_location', 'wpcsm_conditions', 'wpcsm_custom_location', 'wpcsm_container', 'wpcsm_extra_classes', 'wpcsm_design', 'wpcsm_custom_css', 'wpcsm_css');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpcsm_activate', 'wpcsm_example', 'wpcsm_location', 'wpcsm_conditions', 'wpcsm_custom_location', 'wpcsm_container', 'wpcsm_extra_classes', 'wpcsm_design', 'wpcsm_custom_css', 'wpcsm_css');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpcsm_activate', 'wpcsm_example', 'wpcsm_location', 'wpcsm_conditions', 'wpcsm_custom_location', 'wpcsm_container', 'wpcsm_extra_classes', 'wpcsm_design', 'wpcsm_custom_css', 'wpcsm_css');

