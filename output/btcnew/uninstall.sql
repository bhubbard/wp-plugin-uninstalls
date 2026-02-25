-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('btcnew_comment_counts', 'btcnew_comment_summary', 'btcnew_post', 'btcnew_own_blog_comment', 'btcnew_retweet');
DELETE FROM wp_usermeta WHERE meta_key IN ('btcnew_comment_counts', 'btcnew_comment_summary', 'btcnew_post', 'btcnew_own_blog_comment', 'btcnew_retweet');
DELETE FROM wp_termmeta WHERE meta_key IN ('btcnew_comment_counts', 'btcnew_comment_summary', 'btcnew_post', 'btcnew_own_blog_comment', 'btcnew_retweet');
DELETE FROM wp_commentmeta WHERE meta_key IN ('btcnew_comment_counts', 'btcnew_comment_summary', 'btcnew_post', 'btcnew_own_blog_comment', 'btcnew_retweet');

