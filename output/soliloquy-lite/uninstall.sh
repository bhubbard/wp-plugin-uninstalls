#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'soliloquy_upgrade'
wp option delete 'soliloquy-publishing-default'
wp option delete 'soliloquy_slide_position'
wp option delete 'soliloquy'
wp option delete 'soliloquy_lite_upgrade'
wp option delete 'soliloquy_shareasale_id'
wp option delete 'soliloquy_dynamic'
wp option delete 'soliloquy_default_slider'
wp option delete 'soliloquy_slide_view'
wp option delete 'hide_am_notices'
wp option delete 'soliloquy_upgrade_cpts'
wp option delete 'soliloquy_review'
wp option delete 'soliloquy_over_time'

# Delete Transients
wp transient delete '_soliloquy_is_new_install'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient__sol_cache_%' OR option_name LIKE '_site_transient__sol_cache_%'"
wp transient delete '_sol_cache_all'

# Clear Cron Jobs
wp cron event delete 'soliloquy_admin_notifications_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_soliloquy_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_soliloquy_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_soliloquy_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_soliloquy_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_soliloquy_image_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_soliloquy_image_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_soliloquy_image_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_soliloquy_image_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sol_slider_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sol_slider_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sol_slider_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sol_slider_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sol_has_slider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sol_has_slider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sol_has_slider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sol_has_slider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sol_in_slider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sol_in_slider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sol_in_slider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sol_in_slider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sol_just_published'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sol_just_published'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sol_just_published'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sol_just_published'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eg_in_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eg_in_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eg_in_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eg_in_posts'"
