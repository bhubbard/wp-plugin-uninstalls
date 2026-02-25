-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('theraplo_config', 'theraplo_override_bookero', 'theraplo_hide_bookero', 'theraplo_auto_insert', 'theraplo_show_welcome_notice', 'theraplo_custom_css', 'theraplo_specialists_list', 'theraplo_js_status');

