-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smartdocs_hero_title', 'smartdocs_hero_description', 'smartdocs_use_built_in_doc_archive', 'smartdocs_custom_doc_page', 'smartdocs_archive_page_slug', 'smartdocs_category_slug', 'smartdocs_enable_single_template', 'smartdocs_enable_taxonomy_template', 'smartdocs_support_page_url', 'smartdocs_search_post_types', 'smartdocs_rewrite_rules_flushed', 'smartdocs_installed_time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_smartdocs_upvotes', '_smartdocs_downvotes', 'taxonomy_thumbnail_id', 'thumbnail_id', 'order');
DELETE FROM wp_usermeta WHERE meta_key IN ('_smartdocs_upvotes', '_smartdocs_downvotes', 'taxonomy_thumbnail_id', 'thumbnail_id', 'order');
DELETE FROM wp_termmeta WHERE meta_key IN ('_smartdocs_upvotes', '_smartdocs_downvotes', 'taxonomy_thumbnail_id', 'thumbnail_id', 'order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_smartdocs_upvotes', '_smartdocs_downvotes', 'taxonomy_thumbnail_id', 'thumbnail_id', 'order');

