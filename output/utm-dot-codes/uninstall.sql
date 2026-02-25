-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('utmdc_version');
DELETE FROM wp_options WHERE option_name LIKE '%_labels';
DELETE FROM wp_options WHERE option_name LIKE '%_shortener';
DELETE FROM wp_options WHERE option_name LIKE '%_apikey';
DELETE FROM wp_options WHERE option_name LIKE '%_social';
DELETE FROM wp_options WHERE option_name LIKE '%_lowercase';
DELETE FROM wp_options WHERE option_name LIKE '%_alphanumeric';
DELETE FROM wp_options WHERE option_name LIKE '%_nospaces';
DELETE FROM wp_options WHERE option_name LIKE '%_notes_show';
DELETE FROM wp_options WHERE option_name LIKE '%_notes_preview';
DELETE FROM wp_options WHERE option_name LIKE '%_rebrandly_domains_active';
DELETE FROM wp_options WHERE option_name LIKE '%_rebrandly_domains';
DELETE FROM wp_options WHERE option_name LIKE '%_rebrandly_domains_update';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notes';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notes';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notes';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notes';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_source';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_source';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_source';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_source';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_medium';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_medium';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_medium';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_medium';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_campaign';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_campaign';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_campaign';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_campaign';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_term';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_term';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_term';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_term';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_content';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_content';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_content';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_content';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_shorturl';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_shorturl';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_shorturl';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_shorturl';

