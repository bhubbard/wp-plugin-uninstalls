-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Zotpress_DefaultAccount', 'Zotpress_cache_version', 'Zotpress_DefaultCPT', 'Zotpress_DefaultEditor', 'Zotpress_DefaultStyle', 'Zotpress_StyleList', 'Zotpress_update_version', 'Zotpress_main_db_version', 'Zotpress_oauth_db_version', 'Zotpress_zoteroItems_db_version', 'Zotpress_zoteroCollections_db_version', 'Zotpress_zoteroTags_db_version', 'Zotpress_zoteroRelItemColl_db_version', 'Zotpress_zoteroRelItemTags_db_version', 'Zotpress_zoteroItemImages_db_version', 'Zotpress_update_notice_dismissed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('zotpress_5_2_ignore_notice', 'zotpress_survey_notice_ignore');
DELETE FROM wp_usermeta WHERE meta_key IN ('zotpress_5_2_ignore_notice', 'zotpress_survey_notice_ignore');
DELETE FROM wp_termmeta WHERE meta_key IN ('zotpress_5_2_ignore_notice', 'zotpress_survey_notice_ignore');
DELETE FROM wp_commentmeta WHERE meta_key IN ('zotpress_5_2_ignore_notice', 'zotpress_survey_notice_ignore');

