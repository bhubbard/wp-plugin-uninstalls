-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cpglry_options', 'cpglry_setup_notice_dismissed', 'cpglry_shortcode_notice_dismissed', 'cpglry_new_shortcode_notice_shown');

