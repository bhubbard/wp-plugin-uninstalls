-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swslcdt', 'sws_index_rebuild_interval_hours', 'sws_show_price', 'sws_show_stock', 'sws_show_debug_score', 'sws_enable_cache', 'sws_top_search_target', 'sws_search_classes_mobile', 'sws_search_classes_desktop', 'sws_custom_css', 'sws_insert_method', 'sws_disable_logging_for_admins', 'sws_enable_keyword_column', 'sws_license_email', 'sws_license_key', 'sws_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sws_notice_dismissed_until', '_sws_searched_keywords', '_sws_addtocart_keywords', 'external_image', 'external_image_gallery');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sws_notice_dismissed_until', '_sws_searched_keywords', '_sws_addtocart_keywords', 'external_image', 'external_image_gallery');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sws_notice_dismissed_until', '_sws_searched_keywords', '_sws_addtocart_keywords', 'external_image', 'external_image_gallery');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sws_notice_dismissed_until', '_sws_searched_keywords', '_sws_addtocart_keywords', 'external_image', 'external_image_gallery');

