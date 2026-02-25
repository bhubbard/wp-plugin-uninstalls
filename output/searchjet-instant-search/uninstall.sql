-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('searchjet_ai_answers_enabled', 'searchjet_site_id', 'searchjet_hosted_api_key', 'searchjet_search_mode', 'searchjet_search_attributes', 'searchjet_ai_agents', 'searchjet_log_backlog', 'searchjet_automations_enabled', 'searchjet_automation_filters', 'searchjet_webhook_url', 'searchjet_zapier_webhook_url', 'searchjet_webhook_secret', 'searchjet_zapier_secret', 'searchjet_click_backlog', 'searchjet_include_status', 'searchjet_exclude_sticky', 'searchjet_exclude_protected', 'searchjet_exclude_mime_types', 'searchjet_exclude_post_types', 'searchjet_client_info', 'searchjet_agents_enabled', 'searchjet_agents_enabled_ids', 'searchjet_agents_notes', 'searchjet_webhook_provider', 'searchjet_webhook_url_n8n', 'searchjet_webhook_url_zapier', 'searchjet_primary_color', 'searchjet_theme', 'searchjet_attributes', 'searchjet_max_results', 'searchjet_show_thumbnails', 'searchjet_show_prices', 'searchjet_show_categories', 'searchjet_show_excerpts', 'searchjet_show_rating', 'searchjet_show_stock', 'searchjet_disable_search_mode', 'searchjet_zr_threshold', 'searchjet_zr_window', 'searchjet_last_reindex_time', 'searchjet_ui_options', 'searchjet_automation_webhook_url', 'searchjet_automation_webhook_secret', 'searchjet_api_key', 'searchjet_project_id', 'searchjet_require_event_nonce', 'searchjet_index_attachments', 'searchjet_host_url', 'searchjet_document_count', 'searchjet_usage_limits');
DELETE FROM wp_options WHERE option_name IN ('searchjet_searches_today');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('astra-custom-title', 'astra-intro-text');
DELETE FROM wp_usermeta WHERE meta_key IN ('astra-custom-title', 'astra-intro-text');
DELETE FROM wp_termmeta WHERE meta_key IN ('astra-custom-title', 'astra-intro-text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('astra-custom-title', 'astra-intro-text');

