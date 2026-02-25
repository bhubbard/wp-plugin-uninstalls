-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seto_db_version', 'seto_plugin_activation_date', 'seto_free_options', 'seto_disable_reviews', 'seto_options');

