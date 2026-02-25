-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scap_captchaBg', 'scap_captchaBgColor', 'scap_dontUseImageBg', 'scap_captchaStartText', 'captchaEndText', 'scap_captchaEndText');

