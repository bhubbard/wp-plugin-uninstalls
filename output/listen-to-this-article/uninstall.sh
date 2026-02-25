#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'himoose_api_key'
wp option delete 'himoose_domain'
wp option delete 'himoose_auto_insert'
wp option delete 'himoose_generation_defaults'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'himoose_successful_assignments_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'himoose_successful_assignments_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'himoose_successful_assignments_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'himoose_successful_assignments_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'himoose_review_prompt_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'himoose_review_prompt_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'himoose_review_prompt_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'himoose_review_prompt_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_himoose_embed_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_himoose_embed_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_himoose_embed_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_himoose_embed_html'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_himoose_job_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_himoose_job_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_himoose_job_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_himoose_job_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_himoose_podcast_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_himoose_podcast_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_himoose_podcast_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_himoose_podcast_label'"
