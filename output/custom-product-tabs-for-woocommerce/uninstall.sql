-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%wqrerror';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('enable_wpcc_extra_tab', 'extra_wpcc_tab_desc_fields', 'extra_wpcc_tab_title_fields');
DELETE FROM wp_usermeta WHERE meta_key IN ('enable_wpcc_extra_tab', 'extra_wpcc_tab_desc_fields', 'extra_wpcc_tab_title_fields');
DELETE FROM wp_termmeta WHERE meta_key IN ('enable_wpcc_extra_tab', 'extra_wpcc_tab_desc_fields', 'extra_wpcc_tab_title_fields');
DELETE FROM wp_commentmeta WHERE meta_key IN ('enable_wpcc_extra_tab', 'extra_wpcc_tab_desc_fields', 'extra_wpcc_tab_title_fields');

