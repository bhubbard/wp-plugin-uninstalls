-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pendhope_snippet_options', 'pendhope_admin_tracking', 'pendhope_tracking');

