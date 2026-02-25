#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aiws_search_company_name'
wp option delete 'aiws_search_system_prompt'
wp option delete 'aiws_search_extra_context'
wp option delete 'aiws_search_custom_tags'
wp option delete 'aiws_search_reindex_total'
wp option delete 'aiws_search_reindex_queue'
wp option delete 'aiws_search_reindex_in_progress'
wp option delete 'aiws_search_priority_ids'
wp option delete 'aiws_priority_pages'
wp option delete 'aiws_search_contact_url'
wp option delete 'aiws_search_api_key'
wp option delete 'aiws_search_category_taxonomies'
wp option delete 'aiws_search_extra_post_types'
wp option delete 'aiws_search_excluded_posts'
wp option delete 'aiws_search_show_wizard'
wp option delete 'aiws_search_auto_tag_backup'
wp option delete 'aiws_search_manual_tag_backup'
wp option delete 'aiws_search_reindex_last_percent'
wp option delete 'aiws_search_company_description'
wp option delete 'aiws_search_site_type'
wp option delete 'aiws_search_theme'
wp option delete 'aiws_search_contact_info'
wp option delete 'aiws_search_post_type_order'
wp option delete 'aiws_search_feedback_frontend'
wp option delete 'aiws_search_feedback_backend'
wp option delete 'aiws_search_docs'

# Clear Cron Jobs
wp cron event delete 'aiws_search_reindex_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aiws_search_cached_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aiws_search_cached_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aiws_search_cached_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aiws_search_cached_text'"
