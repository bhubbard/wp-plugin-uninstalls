-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cg_deferred_admin_notices', 'cg_version', 'cg-language');

