-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_slug_check_dismissed_time', 'dapfforwc_filters', 'dapfforwc_options', 'dapfforwc_style_options', 'dapfforwc_template_options', 'dapfforwc_advance_options', 'dapfforwc_seo_permalinks_options', 'dapfforwc_install_time', 'dapfforwc_review_already_done', 'dapfforwc_remind_me_later', 'dapfforwcpro_license_key', 'dapfforwcpro_license_status', 'woocommerce_shop_page_id', 'onepaquc_analytics_last_sent', 'dapfforwc_license_key', 'dapfforwcpro_admin_notice');
DELETE FROM wp_options WHERE option_name LIKE 'dapfforwc_filtered_ids_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dapfforwc_ny_notice_dismissed_until', 'thumbnail_id', '_elementor_data', '_fl_builder_data', 'ct_builder_shortcodes');
DELETE FROM wp_usermeta WHERE meta_key IN ('dapfforwc_ny_notice_dismissed_until', 'thumbnail_id', '_elementor_data', '_fl_builder_data', 'ct_builder_shortcodes');
DELETE FROM wp_termmeta WHERE meta_key IN ('dapfforwc_ny_notice_dismissed_until', 'thumbnail_id', '_elementor_data', '_fl_builder_data', 'ct_builder_shortcodes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dapfforwc_ny_notice_dismissed_until', 'thumbnail_id', '_elementor_data', '_fl_builder_data', 'ct_builder_shortcodes');

