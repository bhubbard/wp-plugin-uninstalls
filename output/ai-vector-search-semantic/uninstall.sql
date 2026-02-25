-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aivesese_search_results_limit', 'aivesese_cli_upgrade_notice_dismissed', 'aivesese_plugin_version', 'aivesese_connection_mode', 'aivesese_postgres_connection_string', 'aivesese_lite_stopwords', 'aivesese_lite_synonyms', 'aivesese_lite_index_limit', 'aivesese_lite_avg_search_time', 'aivesese_license_key', 'aivesese_api_activated', 'aivesese_store', 'aivesese_url', 'aivesese_key', 'aivesese_enable_search', 'aivesese_semantic_toggle', 'aivesese_openai', 'aivesese_enable_woodmart_integration', 'aivesese_sql_v2_dismissed', 'aivesese_schema_installed', 'aivesese_schema_install_method', 'aivesese_analytics_db_version', 'aivesese_schema_version', 'aivesese_master_key_notice_dismissed', 'aivesese_show_welcome_notice', 'aivesese_analytics_discovered', 'aivesese_auto_sync', 'aivesese_enable_pdp_similar', 'aivesese_enable_cart_below');
DELETE FROM wp_options WHERE option_name LIKE 'aivesese_opportunity_shown_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aivesese_help_open', '_cogs_total_value', '_cost_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aivesese_help_open', '_cogs_total_value', '_cost_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aivesese_help_open', '_cogs_total_value', '_cost_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aivesese_help_open', '_cogs_total_value', '_cost_price');

