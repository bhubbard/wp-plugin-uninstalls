-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('utils_disable_rsd_checkbox', 'utils_remove_wp_ver_checkbox', 'utils_remove_wlwmanifest_checkbox', 'utils_remove_shortlink_checkbox', 'utils_disable_api_checkbox', 'utils_remove_discore_links_checkbox');

