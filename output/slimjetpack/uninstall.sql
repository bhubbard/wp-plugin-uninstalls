-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jetpack_options', 'jetpack_id', 'active_sitewide_plugins', 'jetpack_log', 'stats_options', 'open_graph_protocol_site_type', 'facebook_admins', 'carousel_enable_it', 'carousel_display_exif', 'carousel_display_geo', 'carousel_background_color', 'safecss_preview_rev', 'safecss_add', 'safecss_content_width', 'safecss_rev', 'safecss_preview_add', 'safecss_revision_migrated', 'safecss', 'nova_menu_order', 'jetpack_testimonial', 'gravatar_disable_hovercards', 'wp_mobile_disable', 'wp_mobile_custom_css', 'wp_mobile_featured_images', 'wp_mobile_excerpt', 'wp_mobile_static_front_page', 'wp_mobile_header_color', 'wp_mobile_app_promos', 'sharedaddy_disable_resources', 'sharing-options', 'sharing-services', 'text_direction', 'polldaddy_load_poll_inline', 'embed_size_w', 'embed_autourls', 'featured-content', 'tiled_galleries', 'video_player_freedom', 'video_player_high_quality', 'jetpack_register', 'jetpack_activated', 'jetpack_active_modules', 'jetpack_do_activate', 'jetpack_was_activated', 'jetpack_auto_installed', 'jetpack_https_test', 'jetpack_has_identity_crisis', 'jetpack-testimonial-count-cache', 'featured_content_ids', 'jetpack_register');
DELETE FROM wp_options WHERE option_name LIKE '%_rev';
DELETE FROM wp_options WHERE option_name LIKE 'soundcloud_%';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE 'wp-site-info-%';
DELETE FROM wp_options WHERE option_name LIKE 'wp-post-info-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('publicize_results', 'vimeo_poster_image', '_feedback_akismet_values', '_feedback_author', '_feedback_author_email', '_feedback_author_url', '_feedback_ip', '_feedback_contact_form_url', '_feedback_subject', '_feedback_extra_fields', '_feedback_email', '_feedback_all_fields', 'custom_css_add', 'content_width', 'custom_css_preprocessor', 'nova_price', 'sharing_disabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('publicize_results', 'vimeo_poster_image', '_feedback_akismet_values', '_feedback_author', '_feedback_author_email', '_feedback_author_url', '_feedback_ip', '_feedback_contact_form_url', '_feedback_subject', '_feedback_extra_fields', '_feedback_email', '_feedback_all_fields', 'custom_css_add', 'content_width', 'custom_css_preprocessor', 'nova_price', 'sharing_disabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('publicize_results', 'vimeo_poster_image', '_feedback_akismet_values', '_feedback_author', '_feedback_author_email', '_feedback_author_url', '_feedback_ip', '_feedback_contact_form_url', '_feedback_subject', '_feedback_extra_fields', '_feedback_email', '_feedback_all_fields', 'custom_css_add', 'content_width', 'custom_css_preprocessor', 'nova_price', 'sharing_disabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('publicize_results', 'vimeo_poster_image', '_feedback_akismet_values', '_feedback_author', '_feedback_author_email', '_feedback_author_url', '_feedback_ip', '_feedback_contact_form_url', '_feedback_subject', '_feedback_extra_fields', '_feedback_email', '_feedback_all_fields', 'custom_css_add', 'content_width', 'custom_css_preprocessor', 'nova_price', 'sharing_disabled');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'jetpack_json_api_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'jetpack_json_api_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'jetpack_json_api_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'jetpack_json_api_%';

