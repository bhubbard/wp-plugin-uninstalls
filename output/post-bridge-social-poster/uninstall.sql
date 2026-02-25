-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('post-bridge-social-poster-access-token', 'post-bridge-social-poster-refresh-token', 'post-bridge-social-poster-token-expires', 'post_bridge_social_poster_api_profiles');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_post_bridge_social_poster', '_post_bridge_social_poster_success', '_post_bridge_social_poster_error', '_post_bridge_social_poster_errors');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_post_bridge_social_poster', '_post_bridge_social_poster_success', '_post_bridge_social_poster_error', '_post_bridge_social_poster_errors');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_post_bridge_social_poster', '_post_bridge_social_poster_success', '_post_bridge_social_poster_error', '_post_bridge_social_poster_errors');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_post_bridge_social_poster', '_post_bridge_social_poster_success', '_post_bridge_social_poster_error', '_post_bridge_social_poster_errors');
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

