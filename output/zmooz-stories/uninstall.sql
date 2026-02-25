-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zmooz_custom_post_type_variable', 'zmooz_custom_plugin_default_user', 'zmooz_custom_plugin_default_slug');

