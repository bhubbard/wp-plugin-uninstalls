-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('postgetType', 'itmar_facebook_selected_page_id', 'itmar_facebook_granted', 'itmar_facebook_access_token', 'itmar_facebook_expires_at', 'itmar_facebook_user', 'itmar_facebook_pages', 'itmar_wait_video', 'itmar_twitter_access_token', 'itmar_twitter_expires_at', 'itmar_twitter_refresh_token', 'itmar_twitter_user', 'itmar_post_needs_flush', 'itmar_permission_error', 'itmar_ogp_enabled', 'itmar_ogp_site_name', 'itmar_ogp_default_image', 'itmar_ogp_square_image', 'itmar_ogp_twitter_card', 'itmar_convert_jobs_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'twitter_id', 'facebook_id', 'instagram_id', 'custom_revisions_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'twitter_id', 'facebook_id', 'instagram_id', 'custom_revisions_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'twitter_id', 'facebook_id', 'instagram_id', 'custom_revisions_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'twitter_id', 'facebook_id', 'instagram_id', 'custom_revisions_count');

