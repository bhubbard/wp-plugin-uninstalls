-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hostbox_recaptcha_site_key', 'hostbox_recaptcha_secret_key', 'hostbox_recaptcha_version', 'hostbox_recaptcha_min_score', 'hostbox_recaptcha_just_activated');

