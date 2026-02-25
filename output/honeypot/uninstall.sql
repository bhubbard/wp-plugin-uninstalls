-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpa_reviews_notice_hide', 'wpa_pateron_notice_hide', 'wpa_extended_notice_hide', 'wpa_installed_date', 'wpa_stats', 'wpa_field_name', 'wpa_error_message', 'wpa_disable_test_widget', 'wpa_disable_jquery');

