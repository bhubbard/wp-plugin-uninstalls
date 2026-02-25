-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('islamic_library_language_code', 'islamic_library_video_view', 'islamic_library_view_breadcrumb', 'islamic_library_hidden_date', 'islamic_library_hidden_prepared', 'islamic_library_hidden_language', 'islamic_library_hidden_translated_into', 'islamic_library_hidden_source', 'islamic_library_hidden_image', 'islamic_library_hidden_info_date', 'islamic_library_hidden_info_prepared', 'islamic_library_hidden_info_language', 'islamic_library_hidden_info_translated_into', 'islamic_library_hidden_info_source', 'islamic_library_hidden_info_full_description', 'islamic_library_hidden_info_attachments', 'islamic_library_hidden_info_image');

