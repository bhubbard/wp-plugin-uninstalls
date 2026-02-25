-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bdt_biggopti_dismissals', 'ep_custom_css', 'ep_custom_js', 'ep_custom_css_2', 'ep_custom_js_2', 'ep_excluded_pages', 'element-pack-minified-asset-manager-version', 'element_pack_active_modules', 'element_pack_elementor_extend', 'element_pack_third_party_widget', 'element_pack_api_settings', 'element_pack_activation_source', 'bdtep_setup_wizard_completed', 'BDTEP_TPL_DB_VER', 'elementor_viewport_lg', 'elementor_viewport_md', 'ep-bitcoin');
DELETE FROM wp_options WHERE option_name LIKE '%_installed';
DELETE FROM wp_options WHERE option_name LIKE 'elementpack_twitter_access_token_%';
DELETE FROM wp_options WHERE option_name LIKE 'dismissed_biggopti_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_template_type', 'rooten_template_type', '_elementor_data', '_elementor_page_settings', '_elementor_edit_mode', '_wp_page_template', 'bdthemes_tm_company_name', 'bdthemes_tm_platform', 'bdthemes_tm_review_link', 'bdthemes_tm_rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_template_type', 'rooten_template_type', '_elementor_data', '_elementor_page_settings', '_elementor_edit_mode', '_wp_page_template', 'bdthemes_tm_company_name', 'bdthemes_tm_platform', 'bdthemes_tm_review_link', 'bdthemes_tm_rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_template_type', 'rooten_template_type', '_elementor_data', '_elementor_page_settings', '_elementor_edit_mode', '_wp_page_template', 'bdthemes_tm_company_name', 'bdthemes_tm_platform', 'bdthemes_tm_review_link', 'bdthemes_tm_rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_template_type', 'rooten_template_type', '_elementor_data', '_elementor_page_settings', '_elementor_edit_mode', '_wp_page_template', 'bdthemes_tm_company_name', 'bdthemes_tm_platform', 'bdthemes_tm_review_link', 'bdthemes_tm_rating');

