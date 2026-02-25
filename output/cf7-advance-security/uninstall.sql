-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7as_captcha', 'cf7as_hidden_captcha', 'cf7as_email_confirmation', 'cf7as-inlinecss');

