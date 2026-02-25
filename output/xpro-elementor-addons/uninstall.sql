-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xpro_dynamic_template_id', 'elementor_cpt_support', 'xpro_megamenu_options', 'xpro_elementor_addons_options', 'xpro_elementor_widget_list', 'xpro_starter_sites_attachment_data_temp', 'elementor_active_kit', 'sidebars_widgets', 'xpro_elementor_global_settings', 'xpro_theme_builder_dismiss_notice', 'adi_elementor_data_posts', 'content.json', 'widgets.json', 'options.json', 'settings.json', 'delayed_posts', 'imported_term_ids', 'imported_post_ids', 'post_orphans');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'xpro_dynamic_template_id', '_wp_attachment_image_alt', '_elementor_data', '_elementor_page_settings', '_elementor_template_type', 'xpro_render_mode', 'xpro_acf_repeater_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'xpro_dynamic_template_id', '_wp_attachment_image_alt', '_elementor_data', '_elementor_page_settings', '_elementor_template_type', 'xpro_render_mode', 'xpro_acf_repeater_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'xpro_dynamic_template_id', '_wp_attachment_image_alt', '_elementor_data', '_elementor_page_settings', '_elementor_template_type', 'xpro_render_mode', 'xpro_acf_repeater_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'xpro_dynamic_template_id', '_wp_attachment_image_alt', '_elementor_data', '_elementor_page_settings', '_elementor_template_type', 'xpro_render_mode', 'xpro_acf_repeater_name');

