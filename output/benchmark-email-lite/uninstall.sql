-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpbme_key', 'wpbme_temp_token', 'wpbme_usage_disable', 'wpbme_debug', 'wpbme_temp_token_ttl', 'wpbme_ap_token', 'wpbme_tracking_disable', 'wpbme_sister_dismissed', 'wpbme_db_version', 'benchmark-email-lite_group', 'bmew_key', 'widget_benchmarkemaillite_widget', 'widget_wpbme_widget', 'sidebars_widgets');
DELETE FROM wp_options WHERE option_name LIKE 'wpbme_legacy_widget_%';
DELETE FROM wp_options WHERE option_name LIKE '%_fallback';

