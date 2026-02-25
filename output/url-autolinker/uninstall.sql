-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('url_autolinker_data', 'ual_keep_data_on_uninstall', 'url_autolinker_limit', 'url_autolinker_total', 'url_autolinker_tag_controls', 'url_autolinker_skip_paragraphs', 'ual_hide_adminbar_indicator', 'ual_batch_size', 'ual_min_capability', 'ual_index_mode', 'ual_post_type_whitelist', 'ual_post_blacklist', 'ual_blacklist_child_pages', 'ual_link_as_often_as_possible', 'ual_case_sensitive', 'ual_max_links_per_paragraph', 'ual_skip_already_linked_targets', 'ual_excluded_tags', 'ual_link_template', 'ual_global_nofollow', 'ual_cache_enabled', 'ual_api_key', 'ual_pro_enabled', 'ual_tax_filter_enabled', 'ual_tax_filter_mode', 'ual_tax_filter_terms', 'url_autolinker_rules', 'ual_link_stats_cache_v1', 'ual_anchor_stats_cache_v1', 'ual_cache_cleared', 'ual_import_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ual_disable_autolinker', '_ual_aliases', '_ual_newtab', '_ual_nofollow');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ual_disable_autolinker', '_ual_aliases', '_ual_newtab', '_ual_nofollow');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ual_disable_autolinker', '_ual_aliases', '_ual_newtab', '_ual_nofollow');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ual_disable_autolinker', '_ual_aliases', '_ual_newtab', '_ual_nofollow');

