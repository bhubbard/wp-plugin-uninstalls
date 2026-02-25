-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sce_mailchimp_lists', 'wordpress_api_key', 'sce_options', 'ajax-edit-comments_security_key_count', 'comment-edit-lite-activate', 'sce_security_keys');
DELETE FROM wp_options WHERE option_name LIKE 'sce_timer_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sce', 'sce_mailchimp_id', 'rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sce', 'sce_mailchimp_id', 'rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sce', 'sce_mailchimp_id', 'rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sce', 'sce_mailchimp_id', 'rating');

