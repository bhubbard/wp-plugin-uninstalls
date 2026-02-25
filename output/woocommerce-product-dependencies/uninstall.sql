-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tied_categories', '_tied_products', '_dependency_type', '_dependency_selection_type', '_dependency_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tied_categories', '_tied_products', '_dependency_type', '_dependency_selection_type', '_dependency_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tied_categories', '_tied_products', '_dependency_type', '_dependency_selection_type', '_dependency_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tied_categories', '_tied_products', '_dependency_type', '_dependency_selection_type', '_dependency_notice');

