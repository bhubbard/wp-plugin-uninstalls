-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sp-wcsp-woo-notice-dismissed', 'sp_woo_category_slider_review_notice_dismiss', 'sp-wps-notice-dismissed', 'sp-wsb-notice-dismissed', 'sp_wcsp_settings', 'woo_category_slider_version', 'woo_category_slider_first_version', 'woo_category_slider_activation_date', 'woo_category_slider_db_version', 'shapedplugin_offer_banner_dismissed_black_friday_2025', 'shapedplugin_offer_banner_dismissed_new_year_2026', 'spwoocs_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'shapedplugin_offer_banner_dismissed_%';
DELETE FROM wp_options WHERE option_name LIKE 'sp_category_slider_page_id%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sp_wcsp_shortcode_options', 'sp_wcsp_layout_options', 'sp_wcsp_upload_options', '_spf_errors', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('sp_wcsp_shortcode_options', 'sp_wcsp_layout_options', 'sp_wcsp_upload_options', '_spf_errors', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('sp_wcsp_shortcode_options', 'sp_wcsp_layout_options', 'sp_wcsp_upload_options', '_spf_errors', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sp_wcsp_shortcode_options', 'sp_wcsp_layout_options', 'sp_wcsp_upload_options', '_spf_errors', 'thumbnail_id');

