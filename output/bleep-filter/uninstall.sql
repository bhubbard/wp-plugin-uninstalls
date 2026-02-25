-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bleep_filter_content', 'bleep_filter_content_rss', 'bleep_filter_comment', 'bleep_filter_comment_rss', 'bleep_filter_bbpress', 'bleep_filter_format');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bleep_replacement');
DELETE FROM wp_usermeta WHERE meta_key IN ('bleep_replacement');
DELETE FROM wp_termmeta WHERE meta_key IN ('bleep_replacement');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bleep_replacement');

