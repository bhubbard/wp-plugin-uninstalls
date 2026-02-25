-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wck_assign_type', '_wck_assign_products', '_wck_assign_categories', '_wck_assign_tags', '_wck_assign_attributes', '_wck_assign_priority', '_wck_choose_expression_type', '_wck_fieldset', '_wck_version_hash', '_wck_param_name', '_wck_param_value', 'wck_value');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wck_assign_type', '_wck_assign_products', '_wck_assign_categories', '_wck_assign_tags', '_wck_assign_attributes', '_wck_assign_priority', '_wck_choose_expression_type', '_wck_fieldset', '_wck_version_hash', '_wck_param_name', '_wck_param_value', 'wck_value');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wck_assign_type', '_wck_assign_products', '_wck_assign_categories', '_wck_assign_tags', '_wck_assign_attributes', '_wck_assign_priority', '_wck_choose_expression_type', '_wck_fieldset', '_wck_version_hash', '_wck_param_name', '_wck_param_value', 'wck_value');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wck_assign_type', '_wck_assign_products', '_wck_assign_categories', '_wck_assign_tags', '_wck_assign_attributes', '_wck_assign_priority', '_wck_choose_expression_type', '_wck_fieldset', '_wck_version_hash', '_wck_param_name', '_wck_param_value', 'wck_value');

