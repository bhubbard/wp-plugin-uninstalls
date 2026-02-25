-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auditor_blog_list', 'auditor_active_plugins', 'auditor_active_themes');

