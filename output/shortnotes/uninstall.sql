-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shortnotes_rules_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shortnotes_reply_to_url', 'shortnotes_reply_to_name', '_share_on_mastodon_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('shortnotes_reply_to_url', 'shortnotes_reply_to_name', '_share_on_mastodon_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('shortnotes_reply_to_url', 'shortnotes_reply_to_name', '_share_on_mastodon_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shortnotes_reply_to_url', 'shortnotes_reply_to_name', '_share_on_mastodon_url');

