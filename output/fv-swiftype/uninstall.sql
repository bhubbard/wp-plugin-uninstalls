-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fv_swiftype', 'fv_swiftype_last_error');
DELETE FROM wp_options WHERE option_name LIKE '%_deferred_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_deferred_errors';

