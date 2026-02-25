-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sc_api_key', 'seo_links_impressions', 'seo_links_clicks', 'seo_links_multilang', 'seoli_custom_links', 'seoli_openai_api_key', 'seoli_activation_date', 'seo_links_last_update', 'seoli_cron_secret_token', 'seoli_bulk_enabled', 'seoli_bulk_delay', 'seoli_bulk_max_links', 'seoli_bulk_queue', 'seoli_debug_logs', 'seoli_bulk_activity_logs', 'seoli_do_activation_redirect', 'wp_seo_plugins_user_display_name', 'wp_seo_plugins_user_email');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('seo_links_keywords', 'seo_links_keywords_filtered', 'internal_links_keywords_filtered', 'seo_links_keywords_position', 'seo_links_keywords_impressions', 'most_relevant_keyword', 'seo_links_all_keywords', 'seoli_review_dismissed', 'seoli_review_remind_later', 'seoli_usage_count', 'seoli_review_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('seo_links_keywords', 'seo_links_keywords_filtered', 'internal_links_keywords_filtered', 'seo_links_keywords_position', 'seo_links_keywords_impressions', 'most_relevant_keyword', 'seo_links_all_keywords', 'seoli_review_dismissed', 'seoli_review_remind_later', 'seoli_usage_count', 'seoli_review_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('seo_links_keywords', 'seo_links_keywords_filtered', 'internal_links_keywords_filtered', 'seo_links_keywords_position', 'seo_links_keywords_impressions', 'most_relevant_keyword', 'seo_links_all_keywords', 'seoli_review_dismissed', 'seoli_review_remind_later', 'seoli_usage_count', 'seoli_review_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('seo_links_keywords', 'seo_links_keywords_filtered', 'internal_links_keywords_filtered', 'seo_links_keywords_position', 'seo_links_keywords_impressions', 'most_relevant_keyword', 'seo_links_all_keywords', 'seoli_review_dismissed', 'seoli_review_remind_later', 'seoli_usage_count', 'seoli_review_date');

