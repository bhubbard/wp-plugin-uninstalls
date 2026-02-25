-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('micaptcha_loading_mode', 'micaptcha_type', 'micaptcha_letters', 'micaptcha_total_no_of_characters', 'micaptcha_use_curve', 'micaptcha_use_noise', 'micaptcha_distort', 'micaptcha_allowlist_ips', 'micaptcha_timeout_time', 'micaptcha_case_sensitive', 'micaptcha_login', 'micaptcha_password', 'micaptcha_register', 'micaptcha_lost', 'micaptcha_comments', 'micaptcha_registered');
DELETE FROM wp_options WHERE option_name LIKE 'micaptcha_%';

