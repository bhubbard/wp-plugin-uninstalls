#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmake_advance_user_avatar_settings'
wp option delete 'bp-disable-avatar-uploads'
wp option delete 'wpmake_advance_user_avatar_admin_footer_text_rated'
wp option delete 'wpmake_aua_review_notice_dismissed'
wp option delete 'wpmake_aua_activated'
wp option delete 'wpmake_aua_updated_at'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmake_advance_user_avatar_attachment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmake_advance_user_avatar_attachment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmake_advance_user_avatar_attachment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmake_advance_user_avatar_attachment_id'"
