-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('grl_recaptcha_version', 'grl_site_key', 'grl_theme', 'grl_secret_key');
DELETE FROM wp_options WHERE option_name LIKE 'grl_%';

