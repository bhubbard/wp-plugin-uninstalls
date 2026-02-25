-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webmention_avatars', 'webmention_avatar_store_enable', 'webmention_disable_selfpings_same_url', 'webmention_disable_selfpings_same_domain', 'webmention_send_media_mentions', 'webmention_db_version', 'webmention_support_post_types', 'webmention_separate_comment', 'webmention_comment_form_text', 'webmention_home_mentions', 'webmention_approve_domains', 'webmention_show_comment_form', 'webmention_facepile_fold_limit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('avatar', 'protocol', 'semantic_linkbacks_avatar', 'webmention_canonical_url', '_webmentioned', '_mentionme_tries', '_mentionme', 'mf2_author', 'webmention_source_url', 'url', 'webmention_target_url', 'webmention_created_at', 'webmentions_disabled', 'webmentions_disabled_pings');
DELETE FROM wp_usermeta WHERE meta_key IN ('avatar', 'protocol', 'semantic_linkbacks_avatar', 'webmention_canonical_url', '_webmentioned', '_mentionme_tries', '_mentionme', 'mf2_author', 'webmention_source_url', 'url', 'webmention_target_url', 'webmention_created_at', 'webmentions_disabled', 'webmentions_disabled_pings');
DELETE FROM wp_termmeta WHERE meta_key IN ('avatar', 'protocol', 'semantic_linkbacks_avatar', 'webmention_canonical_url', '_webmentioned', '_mentionme_tries', '_mentionme', 'mf2_author', 'webmention_source_url', 'url', 'webmention_target_url', 'webmention_created_at', 'webmentions_disabled', 'webmentions_disabled_pings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('avatar', 'protocol', 'semantic_linkbacks_avatar', 'webmention_canonical_url', '_webmentioned', '_mentionme_tries', '_mentionme', 'mf2_author', 'webmention_source_url', 'url', 'webmention_target_url', 'webmention_created_at', 'webmentions_disabled', 'webmentions_disabled_pings');

