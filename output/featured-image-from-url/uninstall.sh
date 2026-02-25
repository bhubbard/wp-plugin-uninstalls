#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fifu_su_privkey'
wp option delete 'fifu_su_email'
wp option delete 'fifu_proxy_auth'
wp option delete 'fifu_cloud_upload_auto_code'
wp option delete 'fifu_cloud_delete_auto_code'
wp option delete 'fifu_fake_stop'
wp option delete 'fifu_data_clean'
wp option delete 'fifu_run_delete_all'
wp option delete 'fifu_debug'
wp option delete 'fifu_skip'
wp option delete 'fifu_html_cpt'
wp option delete 'fifu_ovw_first'
wp option delete 'fifu_get_first'
wp option delete 'fifu_pcontent_add'
wp option delete 'fifu_pcontent_remove'
wp option delete 'fifu_pcontent_types'
wp option delete 'fifu_hide'
wp option delete 'fifu_hide_type'
wp option delete 'fifu_hide_format'
wp option delete 'fifu_enable_default_url'
wp option delete 'fifu_default_url'
wp option delete 'fifu_default_attach_id'
wp option delete 'fifu_default_cpt'
wp option delete 'fifu_fake'
wp option delete 'fifu_cdn_content'
wp option delete 'fifu_photon'
wp option delete 'fifu_square_desktop'
wp option delete 'fifu_square_mobile'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fifu_defined_size_%'"
wp option delete 'fifu_wc_lbox'
wp option delete 'fifu_wc_zoom'
wp option delete 'fifu_first_activation'
wp option delete 'fifu_run_delete_all_time'
wp option delete 'fifu_fake_attach_id'
wp option delete 'fifu_stats_date'
wp option delete 'fifu_cloud_upload_auto'
wp option delete 'fifu_cloud_delete_auto'
wp option delete 'fifu_cloud_hotlink'
wp option delete 'fifu_reset'
wp option delete 'fifu_installed_time'
wp option delete 'fifu_review_snooze_until'
wp option delete 'fifu_review_done'
wp option delete 'fifu_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_expiration'"
wp option delete 'fifu_author'

# Delete Transients
wp transient delete 'fifu_stats_cdn_count'
wp transient delete 'fifu_redirect_to_settings'

# Clear Cron Jobs
wp cron event delete 'fifu_create_cloud_upload_auto_event'
wp cron event delete 'fifu_create_cloud_delete_auto_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fifu_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fifu_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fifu_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fifu_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fifu_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fifu_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fifu_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fifu_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slimg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slimg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slimg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slimg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
