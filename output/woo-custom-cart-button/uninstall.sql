-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_woo_catcbll_version', '_woo_catcbll_all_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wcatcbll_wcatc_atc_btn_text', '_wcatcbll_wcatc_atc_btn_act', '_catcbll_btn_label', '_catcbll_btn_link', '_elementor_page_settings', '_catcbll_more_info');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wcatcbll_wcatc_atc_btn_text', '_wcatcbll_wcatc_atc_btn_act', '_catcbll_btn_label', '_catcbll_btn_link', '_elementor_page_settings', '_catcbll_more_info');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wcatcbll_wcatc_atc_btn_text', '_wcatcbll_wcatc_atc_btn_act', '_catcbll_btn_label', '_catcbll_btn_link', '_elementor_page_settings', '_catcbll_more_info');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wcatcbll_wcatc_atc_btn_text', '_wcatcbll_wcatc_atc_btn_act', '_catcbll_btn_label', '_catcbll_btn_link', '_elementor_page_settings', '_catcbll_more_info');

