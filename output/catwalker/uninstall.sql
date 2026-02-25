-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('catwalker_custom_taxonomy', 'catwalker_related', 'catwalker_default_taxonomy', 'catwalker_related_include_ids', 'catwalker_related_include_children', 'catwalker_related_exclude_ids', 'catwalker_related_exclude_children', 'catwalker_custom_archive_orderby', 'catwalker_custom_archive_order', 'catwalker_custom_archive_sort', 'catwalker_custom_archive_limit', 'catwalker_post_attributes', 'catwalker_post_attributes_class');

