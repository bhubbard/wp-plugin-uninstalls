-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('respectify_error_notice_dismissed', 'respectify_api_error', 'respectify_last_error_email');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_respectify_article_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_respectify_article_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_respectify_article_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_respectify_article_id');

