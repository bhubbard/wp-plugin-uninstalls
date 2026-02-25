-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tmip-embed', 'tmip-mention-text', 'tmip-num-of-tweets', 'tmip-automatic');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tmip_twitter_mentions');
DELETE FROM wp_usermeta WHERE meta_key IN ('tmip_twitter_mentions');
DELETE FROM wp_termmeta WHERE meta_key IN ('tmip_twitter_mentions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tmip_twitter_mentions');

