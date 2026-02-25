-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pacwtt_option_css', 'pacwtt_option_layout', 'pacwtt_option_monday', 'pacwtt_db_version');

