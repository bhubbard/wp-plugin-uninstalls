-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('steempress_sp_permlink', 'steempress_sp_author', 'Steempress_sp_steem_publish', 'Steempress_sp_steem_update');
DELETE FROM wp_usermeta WHERE meta_key IN ('steempress_sp_permlink', 'steempress_sp_author', 'Steempress_sp_steem_publish', 'Steempress_sp_steem_update');
DELETE FROM wp_termmeta WHERE meta_key IN ('steempress_sp_permlink', 'steempress_sp_author', 'Steempress_sp_steem_publish', 'Steempress_sp_steem_update');
DELETE FROM wp_commentmeta WHERE meta_key IN ('steempress_sp_permlink', 'steempress_sp_author', 'Steempress_sp_steem_publish', 'Steempress_sp_steem_update');

