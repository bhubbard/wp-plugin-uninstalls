-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('usp_options', 'user-submitted-posts-dismiss-notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_submit_name', 'user_submit_url', 'user_submit_email', 'is_submission', 'user_submit_image', 'user_submit_ip', 'usp-post-id', 'usp-post-time');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_submit_name', 'user_submit_url', 'user_submit_email', 'is_submission', 'user_submit_image', 'user_submit_ip', 'usp-post-id', 'usp-post-time');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_submit_name', 'user_submit_url', 'user_submit_email', 'is_submission', 'user_submit_image', 'user_submit_ip', 'usp-post-id', 'usp-post-time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_submit_name', 'user_submit_url', 'user_submit_email', 'is_submission', 'user_submit_image', 'user_submit_ip', 'usp-post-id', 'usp-post-time');

