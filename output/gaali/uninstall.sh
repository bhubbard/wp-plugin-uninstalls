#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'toxicity_plugin_api_key'

# Clear Cron Jobs
wp cron event delete 'toxicity_comment_approve_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'identity_attack'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'identity_attack'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'identity_attack'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'identity_attack'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'insult'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'insult'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'insult'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'insult'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'obscene'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'obscene'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'obscene'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'obscene'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'severe_toxicity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'severe_toxicity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'severe_toxicity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'severe_toxicity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sexual_explicit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sexual_explicit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sexual_explicit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sexual_explicit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'threat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'threat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'threat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'threat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'toxicity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'toxicity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'toxicity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'toxicity'"
