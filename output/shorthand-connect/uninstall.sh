#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sh_v2_token'
wp option delete 'Activated_Shorthand'
wp option delete 'sh_media_cron_offload'
wp option delete 'sh_regex_list'
wp option delete 'sh_css'
wp option delete 'sh_permalink'
wp option delete 'sh_disable_acf'

# Clear Cron Jobs
wp cron event delete 'sh_media_fetch'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'story_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'story_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'story_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'story_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ERROR'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ERROR'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ERROR'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ERROR'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'media_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'media_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'media_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'media_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'story_body'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'story_body'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'story_body'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'story_body'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'story_head'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'story_head'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'story_head'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'story_head'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'story_diagnostic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'story_diagnostic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'story_diagnostic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'story_diagnostic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'story_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'story_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'story_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'story_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abstract'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abstract'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abstract'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abstract'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'no_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'no_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'no_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'no_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'extra_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'extra_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'extra_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'extra_html'"
