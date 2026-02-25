-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gf_madmimi_version', 'gf_madmimi_settings', 'recently_activated');
DELETE FROM wp_options WHERE option_name LIKE '%_remote_ad';

