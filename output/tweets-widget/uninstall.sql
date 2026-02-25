-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('loklak-settings', 'loklak_init', 'loklak-settings[loklak_api]');
DELETE FROM wp_options WHERE option_name LIKE 'twitter_api_%';

