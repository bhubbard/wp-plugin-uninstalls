-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('visitor_audit_version');
DELETE FROM wp_options WHERE option_name LIKE 'visitor_audit_%';

