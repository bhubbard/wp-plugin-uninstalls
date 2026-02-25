-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpbsc_additional_css', 'wpbsc_before_header_archive_id', 'wpbsc_before_header_home_id', 'wpbsc_before_header_search_id', 'wpbsc_after_header_archive_id', 'wpbsc_after_header_home_id', 'wpbsc_after_header_search_id', 'wpbsc_before_loop_home_id', 'wpbsc_before_loop_search_id', 'wpbsc_after_loop_home_id', 'wpbsc_after_loop_search_id', 'wpbsc_before_footer_archive_id', 'wpbsc_before_footer_home_id', 'wpbsc_before_footer_search_id', 'wpbsc_after_footer_archive_id', 'wpbsc_after_footer_home_id', 'wpbsc_after_footer_search_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('disable_pagination', 'disable_prev_next', 'disable_auto_play', 'disable_loop', 'disable_auto_height', 'disable_keyboard', 'slider_effect', 'slider_time', 'content_width', 'random_banners', 'disable_on_mobile', 'slide_per_view', 'space_between', 'wpbsc_before_header_id', 'wpbsc_after_header_id', 'wpbsc_before_loop_id', 'wpbsc_after_loop_id', 'wpbsc_before_footer_id', 'wpbsc_after_footer_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('disable_pagination', 'disable_prev_next', 'disable_auto_play', 'disable_loop', 'disable_auto_height', 'disable_keyboard', 'slider_effect', 'slider_time', 'content_width', 'random_banners', 'disable_on_mobile', 'slide_per_view', 'space_between', 'wpbsc_before_header_id', 'wpbsc_after_header_id', 'wpbsc_before_loop_id', 'wpbsc_after_loop_id', 'wpbsc_before_footer_id', 'wpbsc_after_footer_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('disable_pagination', 'disable_prev_next', 'disable_auto_play', 'disable_loop', 'disable_auto_height', 'disable_keyboard', 'slider_effect', 'slider_time', 'content_width', 'random_banners', 'disable_on_mobile', 'slide_per_view', 'space_between', 'wpbsc_before_header_id', 'wpbsc_after_header_id', 'wpbsc_before_loop_id', 'wpbsc_after_loop_id', 'wpbsc_before_footer_id', 'wpbsc_after_footer_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('disable_pagination', 'disable_prev_next', 'disable_auto_play', 'disable_loop', 'disable_auto_height', 'disable_keyboard', 'slider_effect', 'slider_time', 'content_width', 'random_banners', 'disable_on_mobile', 'slide_per_view', 'space_between', 'wpbsc_before_header_id', 'wpbsc_after_header_id', 'wpbsc_before_loop_id', 'wpbsc_after_loop_id', 'wpbsc_before_footer_id', 'wpbsc_after_footer_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'image%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'image%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'image%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'image%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'url%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'url%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'url%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'url%';

