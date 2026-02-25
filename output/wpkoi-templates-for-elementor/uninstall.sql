-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wtfe_element_effects', 'wtfe_advanced_accordion', 'wtfe_advanced_headings', 'wtfe_animated_text', 'wtfe_button', 'wtfe_countdown', 'wtfe_darkmode', 'wtfe_distorted_headings', 'wtfe_scrolling_text', 'wtfe_qr_code', 'wpkoi_settings', 'elementor_onboarded');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_location', '_elementor_conditions', '_wp_page_template', '_elementor_edit_mode', '_elementor_template_type', '_elementor_version', '_elementor_page_settings', '_elementor_data', '_elementor_page_assets', '_elementor_controls_usage', 'wpkoi_show_review_notice', '_wpkoi-full-width-content', '_wpkoi-transparent-header', 'wpkoi_review_notice_remind_me_later', 'wpkoi_review_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_location', '_elementor_conditions', '_wp_page_template', '_elementor_edit_mode', '_elementor_template_type', '_elementor_version', '_elementor_page_settings', '_elementor_data', '_elementor_page_assets', '_elementor_controls_usage', 'wpkoi_show_review_notice', '_wpkoi-full-width-content', '_wpkoi-transparent-header', 'wpkoi_review_notice_remind_me_later', 'wpkoi_review_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_location', '_elementor_conditions', '_wp_page_template', '_elementor_edit_mode', '_elementor_template_type', '_elementor_version', '_elementor_page_settings', '_elementor_data', '_elementor_page_assets', '_elementor_controls_usage', 'wpkoi_show_review_notice', '_wpkoi-full-width-content', '_wpkoi-transparent-header', 'wpkoi_review_notice_remind_me_later', 'wpkoi_review_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_location', '_elementor_conditions', '_wp_page_template', '_elementor_edit_mode', '_elementor_template_type', '_elementor_version', '_elementor_page_settings', '_elementor_data', '_elementor_page_assets', '_elementor_controls_usage', 'wpkoi_show_review_notice', '_wpkoi-full-width-content', '_wpkoi-transparent-header', 'wpkoi_review_notice_remind_me_later', 'wpkoi_review_dismissed');

