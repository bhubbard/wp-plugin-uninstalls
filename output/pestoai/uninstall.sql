-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pestoai_console_url', 'pestoai_activation_notice', 'pestoai_activation_fail_notice');
DELETE FROM wp_options WHERE option_name LIKE 'pestoai_%';

