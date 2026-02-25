-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('datatensai_locale_url', 'datatensai_datepicker_css', 'datatensai_version');

