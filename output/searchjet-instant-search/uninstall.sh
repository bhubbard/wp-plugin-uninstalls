#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'searchjet_ai_answers_enabled'
wp option delete 'searchjet_site_id'
wp option delete 'searchjet_hosted_api_key'
wp option delete 'searchjet_search_mode'
wp option delete 'searchjet_search_attributes'
wp option delete 'searchjet_ai_agents'
wp option delete 'searchjet_log_backlog'
wp option delete 'searchjet_automations_enabled'
wp option delete 'searchjet_automation_filters'
wp option delete 'searchjet_webhook_url'
wp option delete 'searchjet_zapier_webhook_url'
wp option delete 'searchjet_webhook_secret'
wp option delete 'searchjet_zapier_secret'
wp option delete 'searchjet_click_backlog'
wp option delete 'searchjet_include_status'
wp option delete 'searchjet_exclude_sticky'
wp option delete 'searchjet_exclude_protected'
wp option delete 'searchjet_exclude_mime_types'
wp option delete 'searchjet_exclude_post_types'
wp option delete 'searchjet_client_info'
wp option delete 'searchjet_agents_enabled'
wp option delete 'searchjet_agents_enabled_ids'
wp option delete 'searchjet_agents_notes'
wp option delete 'searchjet_webhook_provider'
wp option delete 'searchjet_webhook_url_n8n'
wp option delete 'searchjet_webhook_url_zapier'
wp option delete 'searchjet_primary_color'
wp option delete 'searchjet_theme'
wp option delete 'searchjet_attributes'
wp option delete 'searchjet_max_results'
wp option delete 'searchjet_show_thumbnails'
wp option delete 'searchjet_show_prices'
wp option delete 'searchjet_show_categories'
wp option delete 'searchjet_show_excerpts'
wp option delete 'searchjet_show_rating'
wp option delete 'searchjet_show_stock'
wp option delete 'searchjet_disable_search_mode'
wp option delete 'searchjet_zr_threshold'
wp option delete 'searchjet_zr_window'
wp option delete 'searchjet_last_reindex_time'
wp option delete 'searchjet_ui_options'
wp option delete 'searchjet_automation_webhook_url'
wp option delete 'searchjet_automation_webhook_secret'
wp option delete 'searchjet_api_key'
wp option delete 'searchjet_project_id'
wp option delete 'searchjet_require_event_nonce'
wp option delete 'searchjet_index_attachments'
wp option delete 'searchjet_host_url'

# Delete Transients
wp transient delete 'searchjet_document_count'
wp transient delete 'searchjet_usage_limits'
wp transient delete 'searchjet_searches_today'

# Clear Cron Jobs
wp cron event delete 'searchjet_send_log_batch'
wp cron event delete 'searchjet_send_click_batch'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'astra-custom-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'astra-custom-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'astra-custom-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'astra-custom-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'astra-intro-text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'astra-intro-text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'astra-intro-text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'astra-intro-text'"
