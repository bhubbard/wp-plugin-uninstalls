-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('leadster-script-code', 'leadster_admin_notice_warning', 'leadster_admin_notice_success', 'leadster_admin_notice_error');

