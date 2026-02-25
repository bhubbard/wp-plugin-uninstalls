-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sits_widgets_version', '_elementor_global_css', 'sits_elementor_addons_options', 'sits_elementor_addons_disabled_widgets', 'sits_hf_synced_ids', 'elementor_widgets_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_template_type', '_wp_page_template', '_elementor_page_settings', '_elementor_conditions', '_sits_hf_source_id', '_elementor_data', '_elementor_css', '_elementor_version', '_sits_hf_type', '_softech_mega_menu_template_id', '_softech_mm_enable', '_softech_mega_menu_item_id', 'author_name', 'job_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_template_type', '_wp_page_template', '_elementor_page_settings', '_elementor_conditions', '_sits_hf_source_id', '_elementor_data', '_elementor_css', '_elementor_version', '_sits_hf_type', '_softech_mega_menu_template_id', '_softech_mm_enable', '_softech_mega_menu_item_id', 'author_name', 'job_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_template_type', '_wp_page_template', '_elementor_page_settings', '_elementor_conditions', '_sits_hf_source_id', '_elementor_data', '_elementor_css', '_elementor_version', '_sits_hf_type', '_softech_mega_menu_template_id', '_softech_mm_enable', '_softech_mega_menu_item_id', 'author_name', 'job_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_template_type', '_wp_page_template', '_elementor_page_settings', '_elementor_conditions', '_sits_hf_source_id', '_elementor_data', '_elementor_css', '_elementor_version', '_sits_hf_type', '_softech_mega_menu_template_id', '_softech_mm_enable', '_softech_mega_menu_item_id', 'author_name', 'job_title');

