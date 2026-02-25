-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('secretkey', 'ddosrecaptcha', 'sitekey', 'ddosrecaptchamsg1', 'ddosrecaptchamsg2', 'ddosrecaptchamsg3', 'ddosrecaptchabutton', 'ddosrecaptchalockurl1', 'ddosrecaptchalockurl2', 'ddosrecaptchalockurl3');

