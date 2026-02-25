-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('notice-interceptor_rules', 'notice-interceptor_autohide', 'notice-interceptor_rules_custom', 'notice-interceptor_option_adminonly', 'notice-interceptor_option_clearing');

