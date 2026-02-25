-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpab_source_type', 'wpab_source_url', 'wpab_source_is_active', 'wpab_source_auto_publish', 'wpab_source_links_noindex', 'wpab_source_feed_url', 'wpab_source_keywords', 'wpab_source_credit_message', 'wpab_source_post_type', 'wpab_source_author_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpab_source_type', 'wpab_source_url', 'wpab_source_is_active', 'wpab_source_auto_publish', 'wpab_source_links_noindex', 'wpab_source_feed_url', 'wpab_source_keywords', 'wpab_source_credit_message', 'wpab_source_post_type', 'wpab_source_author_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpab_source_type', 'wpab_source_url', 'wpab_source_is_active', 'wpab_source_auto_publish', 'wpab_source_links_noindex', 'wpab_source_feed_url', 'wpab_source_keywords', 'wpab_source_credit_message', 'wpab_source_post_type', 'wpab_source_author_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpab_source_type', 'wpab_source_url', 'wpab_source_is_active', 'wpab_source_auto_publish', 'wpab_source_links_noindex', 'wpab_source_feed_url', 'wpab_source_keywords', 'wpab_source_credit_message', 'wpab_source_post_type', 'wpab_source_author_id');

