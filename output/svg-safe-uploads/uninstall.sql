-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('svg_support_enabled', 'svg_support_restrict_admins');

