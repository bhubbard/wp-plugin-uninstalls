-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_yandexmetrika', 'metrika_counter', 'metrika_admintracking', 'metrika_position');

