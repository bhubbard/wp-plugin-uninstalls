-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oemm_plugin_options_logger', 'oemm_plugin_options_adminbar', 'oemm_plugin_options_usecdn', 'oemm_plugin_options_nag', 'oemm_consumer_misc_disable_consumer', 'oemm_consumer_misc_mode', 'oemm_consumer_advanced_clickable', 'oemm_consumer_advanced_ttl', 'oemm_consumer_advanced_timeout', 'oemm_consumer_advanced_size', 'oemm_producer_disable_producer', 'auto_update_plugins', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'oemm_consumer_rules_block_%';
DELETE FROM wp_options WHERE option_name LIKE 'oemm_consumer_rules_param_%';
DELETE FROM wp_options WHERE option_name LIKE 'oemm_consumer_rules_text_%';

