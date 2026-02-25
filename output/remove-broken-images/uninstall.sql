-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('r34rbi_version', 'r34rbi_previous_version', 'r34rbi_deferred_admin_notices');

