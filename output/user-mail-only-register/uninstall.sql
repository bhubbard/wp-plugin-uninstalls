-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('usermailonlyregister', 'multibytecaptchalogin');
DELETE FROM wp_options WHERE option_name LIKE 'umor_captcha_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lp_terms_of_use');
DELETE FROM wp_usermeta WHERE meta_key IN ('lp_terms_of_use');
DELETE FROM wp_termmeta WHERE meta_key IN ('lp_terms_of_use');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lp_terms_of_use');

