-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ESSITCO_esscaptcha_solution_status', 'ESSITCO_captcha_solution_attempts');

