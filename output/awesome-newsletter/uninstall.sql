-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aw_title', 'aw_placeholder', 'aw_incorrect', 'aw_already_exist', 'aw_register_success', 'aw_header_name', 'aw_header_email');

