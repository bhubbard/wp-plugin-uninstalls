-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bpmc_bp_messaging_control');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bpmc_user_email_count', 'bpmc_mentions_user_email_count', 'bpmc_replied_user_ids', 'bpmc_user_have_mentioned');
DELETE FROM wp_usermeta WHERE meta_key IN ('bpmc_user_email_count', 'bpmc_mentions_user_email_count', 'bpmc_replied_user_ids', 'bpmc_user_have_mentioned');
DELETE FROM wp_termmeta WHERE meta_key IN ('bpmc_user_email_count', 'bpmc_mentions_user_email_count', 'bpmc_replied_user_ids', 'bpmc_user_have_mentioned');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bpmc_user_email_count', 'bpmc_mentions_user_email_count', 'bpmc_replied_user_ids', 'bpmc_user_have_mentioned');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%capabilities';

