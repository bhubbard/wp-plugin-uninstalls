-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dolibarr_public_url', 'dolibarr_private_key', 'dolibarr_entity', 'doliconnect_cronjob_multisite', 'license_key_doliconnect-pro', 'dolicustsupp_can_register', 'dolibarr_b2bmode', 'doliconnectdisplayinvoice', 'doliconnectbeta', 'doliconnectfontawesome', 'doliconnectrestrict', 'dolicartproductgrid', 'dolicartsuppliergrid', 'doliconnect_facebook', 'doliconnect_google', 'doliaccount', 'doliDefaultclient', 'doliProductclient', 'doliaccountinfo', 'doliconnect_disablepro', 'doliconnect_cronjob', 'doliconnectrestrict_role', 'dolicart', 'dolitos', 'dolidonation', 'doliagenda', 'doliclassifieds', 'doliconnect_ipkiosk', 'dolishop', 'dolifaq', 'dolishipping', 'dolicartnewlist', 'dolicartlist', 'dolisupplier', 'dolicontact', 'doliconnect_facebook_key', 'doliconnect_facebook_secret', 'doliconnect_google_key', 'doliconnect_google_secret', 'doliconnect_twitter_key', 'doliconnect_twitter_secret', 'doliconnect_linkedin_key', 'doliconnect_linkedin_secret', 'doliconnect_twitter', 'doliconnect_linkedin', 'registration', 'secupress_active_submodule_move-login', 'doliconnect_login', 'doliloginmodal', 'doliconnect_mode');
DELETE FROM wp_options WHERE option_name IN ('tz_email');
DELETE FROM wp_options WHERE option_name LIKE 'doliboard_title_%';
DELETE FROM wp_options WHERE option_name LIKE 'doliboard_email_%';
DELETE FROM wp_options WHERE option_name LIKE 'doliconnect_delay_%';
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('doliboard_4', '_wp_attachment_image_alt', 'civility_code', 'billing_type', 'billing_company', 'billing_birth', 'locale', 'optin1', 'loginmailalert', 'doliproduct_category_id', 'doliproduct_productid', '_doliLock_dropdown_field', '_doliproduct_productid');
DELETE FROM wp_usermeta WHERE meta_key IN ('doliboard_4', '_wp_attachment_image_alt', 'civility_code', 'billing_type', 'billing_company', 'billing_birth', 'locale', 'optin1', 'loginmailalert', 'doliproduct_category_id', 'doliproduct_productid', '_doliLock_dropdown_field', '_doliproduct_productid');
DELETE FROM wp_termmeta WHERE meta_key IN ('doliboard_4', '_wp_attachment_image_alt', 'civility_code', 'billing_type', 'billing_company', 'billing_birth', 'locale', 'optin1', 'loginmailalert', 'doliproduct_category_id', 'doliproduct_productid', '_doliLock_dropdown_field', '_doliproduct_productid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('doliboard_4', '_wp_attachment_image_alt', 'civility_code', 'billing_type', 'billing_company', 'billing_birth', 'locale', 'optin1', 'loginmailalert', 'doliproduct_category_id', 'doliproduct_productid', '_doliLock_dropdown_field', '_doliproduct_productid');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%member_photo';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%member_photo';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%member_photo';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%member_photo';

