-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('msan_notices');
DELETE FROM wp_options WHERE option_name LIKE '%_admin_notices';

