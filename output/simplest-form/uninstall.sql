-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%option_api_last_check';
DELETE FROM wp_options WHERE option_name LIKE '%option_api_is_premium';
DELETE FROM wp_options WHERE option_name LIKE '%option_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%option_to_email';
DELETE FROM wp_options WHERE option_name LIKE '%option_subject_for_admin';
DELETE FROM wp_options WHERE option_name LIKE '%option_from_name';
DELETE FROM wp_options WHERE option_name LIKE '%option_bcc_recipient';
DELETE FROM wp_options WHERE option_name LIKE '%option_ga_ua_code';
DELETE FROM wp_options WHERE option_name LIKE '%option_ga_category';
DELETE FROM wp_options WHERE option_name LIKE '%option_ga_action';
DELETE FROM wp_options WHERE option_name LIKE '%option_ga_label';
DELETE FROM wp_options WHERE option_name LIKE '%option_url_privacy';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-email';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-email';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-email';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-email';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-message';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-message';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-message';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-message';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-page';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-page';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-page';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-page';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-privacy';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-privacy';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-privacy';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-privacy';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-privacy-art-4';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-privacy-art-4';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-privacy-art-4';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-privacy-art-4';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-privacy-art-5';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-privacy-art-5';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-privacy-art-5';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-privacy-art-5';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-confirmed-on';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-confirmed-on';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-confirmed-on';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-confirmed-on';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-confirmed-ip';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-confirmed-ip';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-confirmed-ip';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-confirmed-ip';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-ip-address';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-ip-address';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-ip-address';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-ip-address';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-phone';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-phone';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-phone';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-phone';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-confirmed-on-gmt';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-confirmed-on-gmt';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-confirmed-on-gmt';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-confirmed-on-gmt';

