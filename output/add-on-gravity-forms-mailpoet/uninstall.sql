-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gf_new_mailpoet_plugin_deferred_admin_notices', 'gf_new_mailpoet_plugin_page');

