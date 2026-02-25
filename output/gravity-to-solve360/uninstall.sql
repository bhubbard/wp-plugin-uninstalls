-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gravity_to_solve360_debug_mode', 'gravity_to_solve360_user', 'gravity_to_solve360_token', 'gravity_to_solve360_debug_start_date', 'gravity_to_solve360_last_export_date', 'gravity_to_solve360_to', 'gravity_to_solve360_from', 'gravity_to_solve360_cc', 'gravity_to_solve360_bcc');

