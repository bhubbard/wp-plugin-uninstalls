-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pasp_poll_option', 'pasp_poll_option_id', 'pasp_poll_vote_total_count', 'pasp_poll_type', 'pasp_poll_option_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('pasp_poll_option', 'pasp_poll_option_id', 'pasp_poll_vote_total_count', 'pasp_poll_type', 'pasp_poll_option_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('pasp_poll_option', 'pasp_poll_option_id', 'pasp_poll_vote_total_count', 'pasp_poll_type', 'pasp_poll_option_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pasp_poll_option', 'pasp_poll_option_id', 'pasp_poll_vote_total_count', 'pasp_poll_type', 'pasp_poll_option_image');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'pasp_poll_vote_count_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'pasp_poll_vote_count_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'pasp_poll_vote_count_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'pasp_poll_vote_count_%';

