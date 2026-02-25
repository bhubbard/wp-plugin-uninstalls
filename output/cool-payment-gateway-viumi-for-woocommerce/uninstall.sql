-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cool_viumi_debug');
DELETE FROM wp_options WHERE option_name LIKE '%_last-run';

