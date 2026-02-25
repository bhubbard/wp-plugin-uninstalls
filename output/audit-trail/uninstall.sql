-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('audit_methods', 'audit_trail', 'audit_expiry', 'audit_post', 'audit_post_order', 'audit_version', 'audit_ignore', 'audit_support', 'audit_error_log');

