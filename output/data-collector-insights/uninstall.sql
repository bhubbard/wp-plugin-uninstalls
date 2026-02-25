-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dci_plugin_last_processed_id', 'dci_query_templates', 'dci_themes_last_processed_id', 'dci_system_settings', 'dci_insights_installed', 'dci_insights_version', 'dci_feedback_data', 'dci_product_feedback_data', 'dci_error_message');
DELETE FROM wp_options WHERE option_name LIKE '%_installed';
DELETE FROM wp_options WHERE option_name LIKE 'dismissed_notice_%';

