#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bprestrictrestapi'
wp option delete 'bpmoinitsetup'
wp option delete 'bpmofreecurrentversion'
wp option delete 'bpdisableallfeature'
wp option delete 'bpmoregisterpageurl'
wp option delete 'saved_open_page_url'
wp option delete 'bprestrictsbuddypresssection'
wp option delete 'bpenablepagelevelprotect'
wp option delete 'tomas_bbp_member_only_free_custom_links_login'
wp option delete 'bpmemonlypro_enabled_post_type'
wp option delete 'bpstandardcomponent'
wp option delete 'bpmo_user_first_run_guide_bar_free'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'members_only_free_have_new_version_%'"
wp option delete 'bpopenedcustomizedcomponent'
wp option delete 'bpenableaallbprssrestricts'
wp option delete 'bpenablerssrestricts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp_members_only_access_to_this_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp_members_only_access_to_this_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp_members_only_access_to_this_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp_members_only_access_to_this_page'"
