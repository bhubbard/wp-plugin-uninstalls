-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fx-admin-notice-example');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('st_sf_th', 'port-bg', 'port-text-color', 'st_sf_tag', 'port-count', 'port_layout', 'st_sf_ps', 'port_page', 'port_filters', 'port_load_more', 'port-load_count', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('st_sf_th', 'port-bg', 'port-text-color', 'st_sf_tag', 'port-count', 'port_layout', 'st_sf_ps', 'port_page', 'port_filters', 'port_load_more', 'port-load_count', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('st_sf_th', 'port-bg', 'port-text-color', 'st_sf_tag', 'port-count', 'port_layout', 'st_sf_ps', 'port_page', 'port_filters', 'port_load_more', 'port-load_count', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('st_sf_th', 'port-bg', 'port-text-color', 'st_sf_tag', 'port-count', 'port_layout', 'st_sf_ps', 'port_page', 'port_filters', 'port_load_more', 'port-load_count', '_wp_page_template');

