#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cos_headlinestudio_embed_token'
wp option delete 'cos_headlinestudio_user_id'
wp option delete 'cos_headlinestudio_user_email'
wp option delete 'cos_headlinestudio_account_connected_at'
wp option delete 'cos_headlinestudio_prefer_classic_experience'
wp option delete 'cos_headlinestudio_is_onboarded'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cos_headline_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cos_headline_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cos_headline_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cos_headline_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cos_seo_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cos_seo_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cos_seo_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cos_seo_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cos_headline_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cos_headline_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cos_headline_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cos_headline_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cos_last_analyzed_headline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cos_last_analyzed_headline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cos_last_analyzed_headline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cos_last_analyzed_headline'"
