-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mn_title', 'mn_placeholder', 'mn_incorrect', 'mn_already_exist', 'mn_register_success', 'mn_header_name', 'mn_header_email');

