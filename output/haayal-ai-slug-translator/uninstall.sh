#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'haayal_ai_proxy_quota_remaining'
wp option delete 'haayal_slug_translator_dismissed_notice'
wp option delete 'haayal_dismissed_review_notice'
wp option delete '_ai_slug_generated_slugs_counter'
wp option delete 'ai_slug_translator_settings'
wp option delete '_ai_slug_error_log'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_generated_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_generated_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_generated_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_generated_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_slug_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_slug_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_slug_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_slug_source'"
