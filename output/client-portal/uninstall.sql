-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('client_portal_flush_rewrite_rules_flag', 'cp_activation_date_time', 'cp_notice_pb_dimiss');

