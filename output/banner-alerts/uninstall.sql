-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('options-general_banner-alerts_display', 'rewrite_rules');

