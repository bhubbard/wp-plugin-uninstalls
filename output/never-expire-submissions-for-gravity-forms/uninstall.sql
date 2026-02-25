-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gf_never_expire_activation_time', 'gf_never_expire_plugin_notices_dismissed', 'gf_never_expire_load_position');

