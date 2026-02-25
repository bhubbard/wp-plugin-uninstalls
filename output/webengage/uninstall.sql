-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webengage_widget_status', 'webengage_license_code', 'webengage_redirect_on_first_activation');

