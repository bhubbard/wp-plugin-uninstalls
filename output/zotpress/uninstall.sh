#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Zotpress_DefaultAccount'
wp option delete 'Zotpress_cache_version'
wp option delete 'Zotpress_DefaultCPT'
wp option delete 'Zotpress_DefaultEditor'
wp option delete 'Zotpress_DefaultStyle'
wp option delete 'Zotpress_StyleList'
wp option delete 'Zotpress_update_version'
wp option delete 'Zotpress_main_db_version'
wp option delete 'Zotpress_oauth_db_version'
wp option delete 'Zotpress_zoteroItems_db_version'
wp option delete 'Zotpress_zoteroCollections_db_version'
wp option delete 'Zotpress_zoteroTags_db_version'
wp option delete 'Zotpress_zoteroRelItemColl_db_version'
wp option delete 'Zotpress_zoteroRelItemTags_db_version'
wp option delete 'Zotpress_zoteroItemImages_db_version'
wp option delete 'Zotpress_update_notice_dismissed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zotpress_5_2_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zotpress_5_2_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zotpress_5_2_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zotpress_5_2_ignore_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zotpress_survey_notice_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zotpress_survey_notice_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zotpress_survey_notice_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zotpress_survey_notice_ignore'"
