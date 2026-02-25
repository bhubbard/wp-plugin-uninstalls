-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('srevo_custom_css', 'srevo_locale_url', 'srevo_datepicker_css', 'srevo_version');

