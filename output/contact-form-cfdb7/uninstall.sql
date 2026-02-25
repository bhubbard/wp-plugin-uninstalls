-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cfdb7_view_install_date', 'cfdb7_view_ignore_notice', 'cfdb7_add_ons_feed');

