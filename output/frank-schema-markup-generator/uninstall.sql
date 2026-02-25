-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scmg_db_version', 'scmg_activation_redirect', 'scmg_enabled_post_types', 'scmg_enabled_pages', 'scmg_enabled_posts', 'scmg_enabled_cpt_items', 'scmg_meta_box_type');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_brand', '_csg_schema_type', '_csg_schema_fields');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_brand', '_csg_schema_type', '_csg_schema_fields');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_brand', '_csg_schema_type', '_csg_schema_fields');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_brand', '_csg_schema_type', '_csg_schema_fields');

