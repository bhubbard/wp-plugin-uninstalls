-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ltoc_api_key', 'ltoc_tag_relevance', 'ltoc_add_tag_on_save', 'ltoc_batch_posts', 'ltoc_included_categories', 'ltoc_disable_batch', 'ltoc_tag_blacklist');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ltoc_tagged');
DELETE FROM wp_usermeta WHERE meta_key IN ('ltoc_tagged');
DELETE FROM wp_termmeta WHERE meta_key IN ('ltoc_tagged');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ltoc_tagged');

