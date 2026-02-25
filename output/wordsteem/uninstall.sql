-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('username', 'posting_key', 'default_tags', 'error_reporting_consent', 'wordsteem_notice_field');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wordsteem_is_published_key', '_wordsteem_reward_key', '_wordsteem_username_key', '_wordsteem_permalink_key', '_wordsteem_tags_key', '_wordsteem_to_publish_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wordsteem_is_published_key', '_wordsteem_reward_key', '_wordsteem_username_key', '_wordsteem_permalink_key', '_wordsteem_tags_key', '_wordsteem_to_publish_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wordsteem_is_published_key', '_wordsteem_reward_key', '_wordsteem_username_key', '_wordsteem_permalink_key', '_wordsteem_tags_key', '_wordsteem_to_publish_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wordsteem_is_published_key', '_wordsteem_reward_key', '_wordsteem_username_key', '_wordsteem_permalink_key', '_wordsteem_tags_key', '_wordsteem_to_publish_key');

