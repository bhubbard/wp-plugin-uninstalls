-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('beautiful_taxonomy_filters_version', 'beautiful_taxonomy_filters_post_types', 'polylang', 'beautiful_taxonomy_filters_taxonomies', 'beautiful_taxonomy_filters_automagic', 'beautiful_taxonomy_filters_styles', 'beautiful_taxonomy_filters_custom_css', 'beautiful_taxonomy_filters_disable_select2', 'beautiful_taxonomy_filters_clear_all', 'beautiful_taxonomy_filters_show_count', 'beautiful_taxonomy_filters_show_description', 'beautiful_taxonomy_filters_hide_empty', 'beautiful_taxonomy_filters_disable_heading', 'beautiful_taxonomy_filters_disable_postcount', 'beautiful_taxonomy_filters_dropdown_behaviour', 'beautiful_taxonomy_filters_settings', 'rewrite_rules', 'btf_notice');

