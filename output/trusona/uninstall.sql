-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trusona_keys');
DELETE FROM wp_options WHERE option_name LIKE '%activation';
DELETE FROM wp_options WHERE option_name LIKE '%userinfo_url';
DELETE FROM wp_options WHERE option_name LIKE '%login_url';
DELETE FROM wp_options WHERE option_name LIKE '%token_url';
DELETE FROM wp_options WHERE option_name LIKE '%self_service_onboarding';
DELETE FROM wp_options WHERE option_name LIKE '%disable_wp_form';
DELETE FROM wp_options WHERE option_name LIKE '%trusona_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%client_id';
DELETE FROM wp_options WHERE option_name LIKE '%client_secret';
DELETE FROM wp_options WHERE option_name LIKE '%site_hash';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%subject_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%subject_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%subject_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%subject_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%enabled';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%enabled';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%enabled';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%enabled';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%paired';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%paired';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%paired';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%paired';

