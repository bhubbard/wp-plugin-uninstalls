-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mnssp_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('search_scope', 'priority', 'exclude_ids', 'exclude_categories', 'template_type', 'posttypes', 'icon_picker', 'limit_per_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('search_scope', 'priority', 'exclude_ids', 'exclude_categories', 'template_type', 'posttypes', 'icon_picker', 'limit_per_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('search_scope', 'priority', 'exclude_ids', 'exclude_categories', 'template_type', 'posttypes', 'icon_picker', 'limit_per_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('search_scope', 'priority', 'exclude_ids', 'exclude_categories', 'template_type', 'posttypes', 'icon_picker', 'limit_per_page');

