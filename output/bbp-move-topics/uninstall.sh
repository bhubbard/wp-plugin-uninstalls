#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bbpmt-ptot-donot-close'
wp option delete 'bbpmt-ptot-del-comments'
wp option delete 'bbpmt-ptot-add-author'
wp option delete 'bbpmt-ptot-anon-author'
wp option delete 'bbpmt-ptot-finalcomment-cb'
wp option delete 'bbpmt-ptot-finalcomment-link'
wp option delete 'bbpmt-ptot-finalcomment-text'
wp option delete 'bbpmt-ptot-cuttopic-cb'
wp option delete 'bbpmt-ptot-cuttopic-nbr'
wp option delete 'bbpmt-ptot-cutcomment-cb'
wp option delete 'bbpmt-ptot-cutcomment-nbr'
wp option delete 'bbpmt-ptot-add-post-link'
wp option delete 'bbpmt-ptot-close-for-comment'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbpmt_movedon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbpmt_movedon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbpmt_movedon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbpmt_movedon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbpmt_movedfrom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbpmt_movedfrom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbpmt_movedfrom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbpmt_movedfrom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_forum_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_forum_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_forum_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_forum_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_last_active_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_last_active_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_last_active_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_last_active_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_last_active_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_last_active_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_last_active_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_last_active_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbpmt_zapped'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbpmt_zapped'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbpmt_zapped'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbpmt_zapped'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbpmt_convtoreply_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbpmt_convtoreply_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbpmt_convtoreply_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbpmt_convtoreply_id'"
