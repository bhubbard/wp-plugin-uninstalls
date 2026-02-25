#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jetpack_options'
wp option delete 'jetpack_id'
wp option delete 'active_sitewide_plugins'
wp option delete 'jetpack_log'
wp option delete 'stats_options'
wp option delete 'open_graph_protocol_site_type'
wp option delete 'facebook_admins'
wp option delete 'carousel_enable_it'
wp option delete 'carousel_display_exif'
wp option delete 'carousel_display_geo'
wp option delete 'carousel_background_color'
wp option delete 'safecss_preview_rev'
wp option delete 'safecss_add'
wp option delete 'safecss_content_width'
wp option delete 'safecss_rev'
wp option delete 'safecss_preview_add'
wp option delete 'safecss_revision_migrated'
wp option delete 'safecss'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rev'"
wp option delete 'nova_menu_order'
wp option delete 'jetpack_testimonial'
wp option delete 'gravatar_disable_hovercards'
wp option delete 'wp_mobile_disable'
wp option delete 'wp_mobile_custom_css'
wp option delete 'wp_mobile_featured_images'
wp option delete 'wp_mobile_excerpt'
wp option delete 'wp_mobile_static_front_page'
wp option delete 'wp_mobile_header_color'
wp option delete 'wp_mobile_app_promos'
wp option delete 'sharedaddy_disable_resources'
wp option delete 'sharing-options'
wp option delete 'sharing-services'
wp option delete 'text_direction'
wp option delete 'polldaddy_load_poll_inline'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'soundcloud_%'"
wp option delete 'embed_size_w'
wp option delete 'embed_autourls'
wp option delete 'featured-content'
wp option delete 'tiled_galleries'
wp option delete 'video_player_freedom'
wp option delete 'video_player_high_quality'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'jetpack_register'
wp option delete 'jetpack_activated'
wp option delete 'jetpack_active_modules'
wp option delete 'jetpack_do_activate'
wp option delete 'jetpack_was_activated'
wp option delete 'jetpack_auto_installed'

# Delete Transients
wp transient delete 'jetpack_https_test'
wp transient delete 'jetpack_has_identity_crisis'
wp transient delete 'jetpack-testimonial-count-cache'
wp transient delete 'featured_content_ids'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wp-site-info-%' OR option_name LIKE '_site_transient_wp-site-info-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wp-post-info-%' OR option_name LIKE '_site_transient_wp-post-info-%'"
wp transient delete 'jetpack_register'

# Clear Cron Jobs
wp cron event delete 'jetpack_clean_nonces'
wp cron event delete 'jetpack_sync_all_registered_options'
wp cron event delete 'grunion_scheduled_delete'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'jetpack_json_api_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'jetpack_json_api_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'jetpack_json_api_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'jetpack_json_api_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'publicize_results'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'publicize_results'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'publicize_results'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'publicize_results'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vimeo_poster_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vimeo_poster_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vimeo_poster_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vimeo_poster_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedback_akismet_values'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedback_akismet_values'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedback_akismet_values'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedback_akismet_values'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedback_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedback_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedback_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedback_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedback_author_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedback_author_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedback_author_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedback_author_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedback_author_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedback_author_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedback_author_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedback_author_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedback_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedback_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedback_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedback_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedback_contact_form_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedback_contact_form_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedback_contact_form_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedback_contact_form_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedback_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedback_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedback_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedback_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedback_extra_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedback_extra_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedback_extra_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedback_extra_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedback_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedback_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedback_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedback_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedback_all_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedback_all_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedback_all_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedback_all_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_css_add'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_css_add'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_css_add'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_css_add'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_css_preprocessor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_css_preprocessor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_css_preprocessor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_css_preprocessor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nova_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nova_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nova_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nova_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sharing_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sharing_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sharing_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sharing_disabled'"
