-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('abwp_sc_yandex_webmaster', 'abwp_sc_yandex_metrika', 'abwp_sc_yandex_metrika_position', 'abwp_sc_google_search_console', 'abwp_sc_google_analytics', 'abwp_sc_google_analytics_position', 'abwp_sc_yandex_metrika_token', 'abwp_sc_yandex_metrika_counter_id');

