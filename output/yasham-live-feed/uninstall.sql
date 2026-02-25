-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yasham_livefeed_settings', 'yslf_yasham_livefeed_settings');

