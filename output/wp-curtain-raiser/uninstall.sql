-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_curtain_raiser_options', 'wcr_active_token', 'settings_errors');
DELETE FROM wp_options WHERE option_name LIKE 'wcr_reveal_token_%';

