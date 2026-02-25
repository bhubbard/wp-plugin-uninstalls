-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vulners_plugins_audit_result', 'vulners_os_audit_result', 'vulners_os_audit_last_changes', 'vulners_plugins_audit_last_changes', 'VULNERS_EMAIL', 'VULNERS_API_KEY', 'vulners_audit_result');

