-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('activitypub_db_version', 'activitypub_old_host', 'activitypub_tombstone_urls', 'activitypub_header_image', 'activitypub_blog_identifier', 'activitypub_blog_description', 'activitypub_actor_mode', 'activitypub_custom_post_content', 'activitypub_max_image_attachments', 'activitypub_allow_likes', 'activitypub_allow_reposts', 'activitypub_auto_approve_reactions', 'activitypub_default_quote_policy', 'activitypub_use_hashtags', 'activitypub_use_opengraph', 'activitypub_attribution_domains', 'activitypub_following_ui');
DELETE FROM wp_options WHERE option_name LIKE 'oembed_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('protocol', 'activitypub_followers', '_wp_attachment_image_alt', 'enclosure', 'activitypub_content_warning', 'description');
DELETE FROM wp_usermeta WHERE meta_key IN ('protocol', 'activitypub_followers', '_wp_attachment_image_alt', 'enclosure', 'activitypub_content_warning', 'description');
DELETE FROM wp_termmeta WHERE meta_key IN ('protocol', 'activitypub_followers', '_wp_attachment_image_alt', 'enclosure', 'activitypub_content_warning', 'description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('protocol', 'activitypub_followers', '_wp_attachment_image_alt', 'enclosure', 'activitypub_content_warning', 'description');

