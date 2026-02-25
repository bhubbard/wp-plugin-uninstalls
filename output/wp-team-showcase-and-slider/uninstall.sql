-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpos_anylc_redirect', 'wpos_anylc_site_uid', 'tsas_install_notice', 'espbw_plugins_data');
DELETE FROM wp_options WHERE option_name LIKE 'wpos_anylc_optin_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_member_designation', '_member_department', '_skills', '_member_experience', '_facebook_link', '_google_link', '_likdin_link', '_twitter_link', '_testimonial_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('_member_designation', '_member_department', '_skills', '_member_experience', '_facebook_link', '_google_link', '_likdin_link', '_twitter_link', '_testimonial_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('_member_designation', '_member_department', '_skills', '_member_experience', '_facebook_link', '_google_link', '_likdin_link', '_twitter_link', '_testimonial_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_member_designation', '_member_department', '_skills', '_member_experience', '_facebook_link', '_google_link', '_likdin_link', '_twitter_link', '_testimonial_email');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

