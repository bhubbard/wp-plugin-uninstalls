-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woo_autocomplete_placeholder', 'woo_submit_placeholder', 'autocomplete_categories', 'autocomplete_tags', 'autocomplete_taxonomies', 'woo_custom_taxonomy', 'include_autocomplete_categories', 'exclude_autocomplete_categories', 'include_autocomplete_tags', 'exclude_autocomplete_tags', 'include_autocomplete_taxonomies', 'exclude_autocomplete_taxonomies');

