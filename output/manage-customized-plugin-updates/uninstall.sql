-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wsx_mcpu_plugin_do_activation_redirect', 'wsx_set_user_accs', 'wsx-mcpu-active-admin-notice');

