-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wordpress_api_key', 'drainware_discard_month', 'drainware_show_user_comments_approved', 'drainware_connectivity_time', 'drainware_spam_count', 'drainware_available_servers', 'drainware_api_key', 'drainware_comment_nonce');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('drainware_result', 'drainware_user_result', 'drainware_user', 'drainware_as_submitted', 'drainware_rechecking', 'drainware_history', 'drainware_error');
DELETE FROM wp_usermeta WHERE meta_key IN ('drainware_result', 'drainware_user_result', 'drainware_user', 'drainware_as_submitted', 'drainware_rechecking', 'drainware_history', 'drainware_error');
DELETE FROM wp_termmeta WHERE meta_key IN ('drainware_result', 'drainware_user_result', 'drainware_user', 'drainware_as_submitted', 'drainware_rechecking', 'drainware_history', 'drainware_error');
DELETE FROM wp_commentmeta WHERE meta_key IN ('drainware_result', 'drainware_user_result', 'drainware_user', 'drainware_as_submitted', 'drainware_rechecking', 'drainware_history', 'drainware_error');

