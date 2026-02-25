-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kzeni_disable_theme_plugin_update_emails_disable_all');

