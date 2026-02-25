-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('speedsize_enabled', 'speedsize_client_id', 'speedsize_client_id_active', 'speedsize_service_base_url', 'speedsize_client_allow_upscale', 'speedsize_client_cdn_syntax', 'speedsize_client_forbidden_paths', 'speedsize_client_whitelist_domains', 'speedsize_js_snippet_enabled', 'speedsize_mute_all_videos', 'speedsize_realtime_parsing_enabled', 'speedsize_css_files_parsing_enabled', 'speedsize_css_files_parsing_excluded_keywords', 'speedsize_keep_https_scheme_on_wrapped_media_urls', 'speedsize_omit_client_id_from_wrapped_media_urls', 'speedsize_disable_processor_filters');

