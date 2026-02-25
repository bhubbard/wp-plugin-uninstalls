#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lws_optimize_deactivate_temporarily'
wp option delete 'lws_optimize_offline'
wp option delete 'lws_optimize_config_array'
wp option delete 'lws_optimize_sitemap_urls'
wp option delete 'lws_optimize_preload_is_ongoing'
wp option delete 'lws_optimize_pagespeed_history'
wp option delete 'lws_optimize_cache_statistics'
wp option delete 'lws_optimize_original_image'
wp option delete 'lws_optimize_images_convertion'
wp option delete 'lws_optimize_current_convertion_stats'
wp option delete 'lws_optimize_all_media_convertion'
wp option delete 'lws_optimize_image_autoconversion_options'
wp option delete 'lws_optimize_image_conversion_options'
wp option delete 'lws_optimize_image_api_key'
wp option delete 'lws_from_autoinstall_optimize'
wp option delete 'wp_lwsoptimize_post_update'
wp option delete 'lwsop_do_not_ask_again'
wp option delete 'lws_opti_memcaching_on'
wp option delete 'lwsop_autopurge'
wp option delete 'lws_op_deactivated'
wp option delete 'lws_op_change_max_width_media'
wp option delete 'lws_op_fb_cache'
wp option delete 'lws_op_fb_exclude'
wp option delete 'lws_op_fb_preload_state'
wp option delete 'polylang'
wp option delete 'active_sitewide_plugins'
wp option delete 'lwsop_plugin_version'

# Delete Transients
wp transient delete 'lws_optimize_conversion_lock'
wp transient delete 'lwsop_remind_me'

# Clear Cron Jobs
wp cron event delete 'lws_optimize_maintenance_db_weekly'
wp cron event delete 'lws_optimize_start_filebased_preload'
wp cron event delete 'lws_optimize_clear_filebased_cache_cron'
wp cron event delete 'lwsop_revertOptimization'
wp cron event delete 'lws_optimize_image_conversion_cron'
wp cron event delete 'lws_optimize_pro_image_conversion_cron'
wp cron event delete 'lws_optimize_image_deconversion_cron'
wp cron event delete 'lws_optimize_clear_filebased_cache'
wp cron event delete 'lws_optimize_convert_media_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
