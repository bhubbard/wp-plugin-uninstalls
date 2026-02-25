-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('subscribe2_options', 'mo_dismiss_adnotice', 'embed_autourls', 'widget_s2counter', 'widget_subscribe2widget', 'sidebars_widgets', 'sidebar_widgets', 's2_future_posts');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_s2mail', 's2_comment_request', '_s2_digest_post_status', 's2_excerpt', 's2_subscribed', 's2_format', 's2_autosub');
DELETE FROM wp_usermeta WHERE meta_key IN ('_s2mail', 's2_comment_request', '_s2_digest_post_status', 's2_excerpt', 's2_subscribed', 's2_format', 's2_autosub');
DELETE FROM wp_termmeta WHERE meta_key IN ('_s2mail', 's2_comment_request', '_s2_digest_post_status', 's2_excerpt', 's2_subscribed', 's2_format', 's2_autosub');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_s2mail', 's2_comment_request', '_s2_digest_post_status', 's2_excerpt', 's2_subscribed', 's2_format', 's2_autosub');
DELETE FROM wp_postmeta WHERE meta_key LIKE 's2_cat%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 's2_cat%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 's2_cat%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 's2_cat%';

