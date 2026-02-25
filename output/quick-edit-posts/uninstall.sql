-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tinysolutions_pqe_settings', 'tinysolutions_pqe_plugin_version', 'tinysolutions_pqe_plugin_activation_time');

