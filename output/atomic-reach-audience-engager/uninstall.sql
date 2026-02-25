-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aranalyzer_isHighlightingEnabled', 'classic-editor-replace', 'aranalyzer_consumerkey', 'aranalyzer_secretkey', 'aranalyzer_state_keys', 'aranalyzer_tracking', 'aranalyzer_view', 'aranalyzer_RSS', 'arActivatedDate', 'aranalyzer_create', 'aranalyzer_recommendation', 'rss_language', 'my_plugin_do_activation_redirect', 'aranalyzer_tracking_date', 'AR_Tracking_Hash');

