-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mcsw_ajax', 'mcsw_form', 'mcsw_form_display');

