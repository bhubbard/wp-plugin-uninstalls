-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcaptcha_login', 'wpcaptcha_register', 'wpcaptcha_lost', 'wpcaptcha_comments', 'wpcaptcha_registered', 'wpcaptcha_type', 'wpcaptcha_letters', 'wpcaptcha_total_no_of_characters');

