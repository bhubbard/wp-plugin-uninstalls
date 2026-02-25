-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xtfefoli_global_sharing_message', 'xtfefoli_linkedin_user_data', 'xtfefoli_users_companies', 'xtfefoli_linkedin_feedpress_page_sync_flag');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_xtfefoli_dont_share_post_linkedin', '_xtfefoli_sended_on_linkedin', '_xtfefoli_shared_on_linkedin', '_xtfefoli_share_message');
DELETE FROM wp_usermeta WHERE meta_key IN ('_xtfefoli_dont_share_post_linkedin', '_xtfefoli_sended_on_linkedin', '_xtfefoli_shared_on_linkedin', '_xtfefoli_share_message');
DELETE FROM wp_termmeta WHERE meta_key IN ('_xtfefoli_dont_share_post_linkedin', '_xtfefoli_sended_on_linkedin', '_xtfefoli_shared_on_linkedin', '_xtfefoli_share_message');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_xtfefoli_dont_share_post_linkedin', '_xtfefoli_sended_on_linkedin', '_xtfefoli_shared_on_linkedin', '_xtfefoli_share_message');

