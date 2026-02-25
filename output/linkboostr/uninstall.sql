-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dila_max_suggestions', 'dila_auto_insert_links', 'dila_enable_classic_editor', 'dila_indexing_trigger', 'dila_excluded_post_types', 'dila_enable_inline_highlights', 'dila_min_internal_links', 'dila_db_version', 'dila_orphan_count', 'dila_broken_links_cache', 'dila_total_indexed_posts', 'dila_broken_links_count', 'dila_idf_scores', 'dila_index_progress');
DELETE FROM wp_options WHERE option_name LIKE 'dila_suggestions_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dila_inbound_count', '_dila_last_indexed', '_dila_keyword_count', '_dila_outbound_count', 'dila_onboarding_completed', 'dila_onboarding_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dila_inbound_count', '_dila_last_indexed', '_dila_keyword_count', '_dila_outbound_count', 'dila_onboarding_completed', 'dila_onboarding_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dila_inbound_count', '_dila_last_indexed', '_dila_keyword_count', '_dila_outbound_count', 'dila_onboarding_completed', 'dila_onboarding_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dila_inbound_count', '_dila_last_indexed', '_dila_keyword_count', '_dila_outbound_count', 'dila_onboarding_completed', 'dila_onboarding_dismissed');

