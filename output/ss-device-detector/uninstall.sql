-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_mobcodes_activate', 'wp_mobcodes_deferred_admin_notices');

