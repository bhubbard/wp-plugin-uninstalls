#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cr_flexible_comment_moderation_system_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cr_flexible_comment_moderation_system_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cr_flexible_comment_moderation_system_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cr_flexible_comment_moderation_system_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cr_flexible_comment_moderation_overide_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cr_flexible_comment_moderation_overide_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cr_flexible_comment_moderation_overide_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cr_flexible_comment_moderation_overide_mode'"
