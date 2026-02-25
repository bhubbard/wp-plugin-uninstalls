-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_db_version', 'wemono_plugin_version', 'wemono_auto_update_enabled', 'wemono_plugin_data_wc-wemono');

