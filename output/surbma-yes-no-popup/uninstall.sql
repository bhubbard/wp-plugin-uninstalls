-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cps_framework_fields', 'surbma_yes_no_popup_fields');

