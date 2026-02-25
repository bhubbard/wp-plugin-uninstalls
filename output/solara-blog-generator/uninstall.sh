#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'solara_server_url'
wp option delete 'solara_pairing_secret'
wp option delete 'solara_site_token'
wp option delete 'solara_connection_status'
wp option delete 'solara_robots_directives'
wp option delete 'solara_disallow_staging'
wp option delete 'solara_llms_enabled'
wp option delete 'solara_llms_content'
wp option delete 'solara_google_site_verification'
wp option delete 'solara_ga4_measurement_id'
wp option delete 'solara_meta_pixel_id'
wp option delete 'solara_tiktok_pixel_id'
wp option delete 'solara_prev_site_token'
wp option delete 'solara_prev_site_token_2'
wp option delete 'solara_api_key'
wp option delete 'solara_hidden_post_ids'
wp option delete 'solara_flush_rewrite_rules'
wp option delete 'solara_enc_priv_pem'
wp option delete 'solara_enc_pub_jwk'
wp option delete 'solara_pending_update'
wp option delete 'solara_auto_update_enabled'
wp option delete 'solara_last_update'
wp option delete 'solara_worker_url'
wp option delete 'solara_security_alert'

# Delete Transients
wp transient delete 'solara_last_poll_time'
wp transient delete 'solara_update_manifest'
wp transient delete 'solara_update_check'
wp transient delete 'solara_update_kill_switch'

# Clear Cron Jobs
wp cron event delete 'solara_rotate_token'
wp cron event delete 'solara_poll_tasks'
wp cron event delete 'solara_check_updates'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_solara_custom_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_solara_custom_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_solara_custom_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_solara_custom_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_solara_hide_from_nav'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_solara_hide_from_nav'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_solara_hide_from_nav'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_solara_hide_from_nav'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_solara_excerpt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_solara_excerpt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_solara_excerpt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_solara_excerpt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_solara_featured_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_solara_featured_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_solara_featured_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_solara_featured_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_solara_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_solara_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_solara_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_solara_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_solara_publish_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_solara_publish_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_solara_publish_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_solara_publish_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_solara_seo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_solara_seo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_solara_seo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_solara_seo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_solara_seo_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_solara_seo_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_solara_seo_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_solara_seo_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_solara_seo_canonical'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_solara_seo_canonical'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_solara_seo_canonical'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_solara_seo_canonical'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_solara_seo_og_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_solara_seo_og_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_solara_seo_og_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_solara_seo_og_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_solara_managed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_solara_managed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_solara_managed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_solara_managed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_solara_blog_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_solara_blog_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_solara_blog_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_solara_blog_id'"
