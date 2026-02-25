-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_recaptcha_comment', 'wp_recaptcha_register', 'p_site_key', 'p_secret_key', 'p_addtional_scripts');

