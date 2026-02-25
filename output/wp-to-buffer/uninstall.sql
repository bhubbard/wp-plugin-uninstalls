-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%-review-request';
DELETE FROM wp_options WHERE option_name LIKE '%-review-dismissed';
DELETE FROM wp_options WHERE option_name LIKE '%-version';
DELETE FROM wp_options WHERE option_name LIKE '%-log';
DELETE FROM wp_options WHERE option_name LIKE '%-access-token';
DELETE FROM wp_options WHERE option_name LIKE '%-refresh-token';
DELETE FROM wp_options WHERE option_name LIKE '%-token-expires';
DELETE FROM wp_options WHERE option_name LIKE '%_buffer_api_profiles';
DELETE FROM wp_options WHERE option_name LIKE '%_twitter_api_usernames';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_success';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_success';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_success';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_success';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_error';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_error';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_error';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_error';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_errors';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_errors';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_errors';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_errors';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_needs_publishing';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_needs_publishing';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_needs_publishing';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_needs_publishing';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_needs_updating';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_needs_updating';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_needs_updating';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_needs_updating';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_last_sent';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_last_sent';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_last_sent';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_last_sent';

