-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fileupfo_view_install_date', 'fileupfo_view_ignore_notice', 'fileupfo_view_ignore_field_notice');

