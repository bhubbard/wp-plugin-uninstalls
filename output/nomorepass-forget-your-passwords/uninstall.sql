-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nomorepass-show-form', 'nomorepass-show-resetpass', 'nomorepass-auto-qr', 'nomorepass-auto-login', 'nomorepass-login-only', 'nomorepass-custom-logo', 'nomorepass-custom-msg');

