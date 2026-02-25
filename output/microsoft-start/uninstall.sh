#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'classic-editor-replace'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'msn_%'"

# Clear Cron Jobs
wp cron event delete 'msnPublishTask'
wp cron event delete 'msphLogTask'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'msn_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'msn_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'msn_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'msn_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'MSN_Publish_Option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'MSN_Publish_Option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'MSN_Publish_Option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'MSN_Publish_Option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'MSN_Add_Feature_Img_On_Top_Of_Post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'MSN_Add_Feature_Img_On_Top_Of_Post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'MSN_Add_Feature_Img_On_Top_Of_Post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'MSN_Add_Feature_Img_On_Top_Of_Post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'MSN_Categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'MSN_Categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'MSN_Categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'MSN_Categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'MSN_Is_Local_News'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'MSN_Is_Local_News'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'MSN_Is_Local_News'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'MSN_Is_Local_News'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'MSN_Is_AIAC_Included'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'MSN_Is_AIAC_Included'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'MSN_Is_AIAC_Included'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'MSN_Is_AIAC_Included'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'MSN_Location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'MSN_Location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'MSN_Location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'MSN_Location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'MSN_Has_Custom_Author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'MSN_Has_Custom_Author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'MSN_Has_Custom_Author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'MSN_Has_Custom_Author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'MSN_Custom_Author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'MSN_Custom_Author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'MSN_Custom_Author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'MSN_Custom_Author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'MSN_Has_Custom_Canonical_Url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'MSN_Has_Custom_Canonical_Url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'MSN_Has_Custom_Canonical_Url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'MSN_Has_Custom_Canonical_Url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'MSN_Custom_Canonical_Url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'MSN_Custom_Canonical_Url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'MSN_Custom_Canonical_Url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'MSN_Custom_Canonical_Url'"
