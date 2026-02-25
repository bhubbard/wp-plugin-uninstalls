-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('synergy_property_seo', 'clean_revision', 'infility_global_configure');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fave_taxonomy_img', 'taxonomy_img_source', 'fave_agent_license', 'fave_agent_mobile', 'fave_agent_email', 'fave_property_images', '_thumbnail_id', 'crawler_img_source', 'is_estate', 'fave_agent_id', 'fave_property_map_address', 'use', 'gallery', 'label', 'address', 'established_year', 'total_units', 'school_network', 'developer', '_elementor_template_type', 'mtr_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('fave_taxonomy_img', 'taxonomy_img_source', 'fave_agent_license', 'fave_agent_mobile', 'fave_agent_email', 'fave_property_images', '_thumbnail_id', 'crawler_img_source', 'is_estate', 'fave_agent_id', 'fave_property_map_address', 'use', 'gallery', 'label', 'address', 'established_year', 'total_units', 'school_network', 'developer', '_elementor_template_type', 'mtr_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('fave_taxonomy_img', 'taxonomy_img_source', 'fave_agent_license', 'fave_agent_mobile', 'fave_agent_email', 'fave_property_images', '_thumbnail_id', 'crawler_img_source', 'is_estate', 'fave_agent_id', 'fave_property_map_address', 'use', 'gallery', 'label', 'address', 'established_year', 'total_units', 'school_network', 'developer', '_elementor_template_type', 'mtr_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fave_taxonomy_img', 'taxonomy_img_source', 'fave_agent_license', 'fave_agent_mobile', 'fave_agent_email', 'fave_property_images', '_thumbnail_id', 'crawler_img_source', 'is_estate', 'fave_agent_id', 'fave_property_map_address', 'use', 'gallery', 'label', 'address', 'established_year', 'total_units', 'school_network', 'developer', '_elementor_template_type', 'mtr_time');

