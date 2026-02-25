-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quantity_product_rule', 'pqdfw_select2', 'pqdfw_cats_select2', 'pqdfw_tags_select2');
DELETE FROM wp_options WHERE option_name LIKE '%pqdfwerror';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pqdfw_pro_min_quantity', 'pqdfw_pro_max_quantity', 'pqdfw_pro_step_quantity');
DELETE FROM wp_usermeta WHERE meta_key IN ('pqdfw_pro_min_quantity', 'pqdfw_pro_max_quantity', 'pqdfw_pro_step_quantity');
DELETE FROM wp_termmeta WHERE meta_key IN ('pqdfw_pro_min_quantity', 'pqdfw_pro_max_quantity', 'pqdfw_pro_step_quantity');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pqdfw_pro_min_quantity', 'pqdfw_pro_max_quantity', 'pqdfw_pro_step_quantity');

