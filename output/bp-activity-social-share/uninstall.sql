-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bpas_icon_color_settings', 'bp_share_services_extra', 'bp_share_all_services_disable', 'bp_share_services', 'active_sitewide_plugins', 'bp_share_flag', '_bpshare_is_new_install');

