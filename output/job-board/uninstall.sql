-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bstwbsftwppdtplgns_options', 'recently_activated', 'active_sitewide_plugins', 'cstmsrch_options', 'jbbrd_options', 'jbbrd_custom_metafield_error_notice', 'sndr_options', 'update_plugins', 'bws_plugins_update');
DELETE FROM wp_options WHERE option_name LIKE '%_options';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bws_affiliate_postbox_dismissed', 'dismissed_wp_pointers', 'jbbrd_job_candidate_category_choose', 'archive', 'jbbrd_user_cv', 'job_candidate_saved_search');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bws_affiliate_postbox_dismissed', 'dismissed_wp_pointers', 'jbbrd_job_candidate_category_choose', 'archive', 'jbbrd_user_cv', 'job_candidate_saved_search');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bws_affiliate_postbox_dismissed', 'dismissed_wp_pointers', 'jbbrd_job_candidate_category_choose', 'archive', 'jbbrd_user_cv', 'job_candidate_saved_search');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bws_affiliate_postbox_dismissed', 'dismissed_wp_pointers', 'jbbrd_job_candidate_category_choose', 'archive', 'jbbrd_user_cv', 'job_candidate_saved_search');

