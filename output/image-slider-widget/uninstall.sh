#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'activatedewic'
wp option delete 'ewic-settings-automatic_update'
wp option delete 'classic-editor-replace'
wp option delete 'ewic_active_addons_lite'

# Delete Transients
wp transient delete 'ewiclite_whats_new'
wp transient delete 'easysliderwidget_featured_feed'

# Clear Cron Jobs
wp cron event delete 'ewic_auto_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ewic_meta_select_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ewic_meta_select_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ewic_meta_select_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ewic_meta_select_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ewic_meta_list_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ewic_meta_list_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ewic_meta_list_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ewic_meta_list_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ewic_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ewic_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ewic_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ewic_ignore_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ewic_meta_slide_nav'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ewic_meta_slide_nav'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ewic_meta_slide_nav'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ewic_meta_slide_nav'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ewic_meta_thumbsizelt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ewic_meta_thumbsizelt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ewic_meta_thumbsizelt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ewic_meta_thumbsizelt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ewic_meta_settings_effect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ewic_meta_settings_effect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ewic_meta_settings_effect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ewic_meta_settings_effect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ewic_meta_settings_smartttl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ewic_meta_settings_smartttl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ewic_meta_settings_smartttl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ewic_meta_settings_smartttl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ewic_meta_slide_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ewic_meta_slide_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ewic_meta_slide_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ewic_meta_slide_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ewic_meta_slide_auto'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ewic_meta_slide_auto'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ewic_meta_slide_auto'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ewic_meta_slide_auto'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ewic_meta_slide_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ewic_meta_slide_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ewic_meta_slide_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ewic_meta_slide_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ewic_meta_slide_lightbox_autoslide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ewic_meta_slide_lightbox_autoslide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ewic_meta_slide_lightbox_autoslide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ewic_meta_slide_lightbox_autoslide'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ewic_meta_slide_lightbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ewic_meta_slide_lightbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ewic_meta_slide_lightbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ewic_meta_slide_lightbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ewic_meta_slide_lightbox_delay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ewic_meta_slide_lightbox_delay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ewic_meta_slide_lightbox_delay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ewic_meta_slide_lightbox_delay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ewic_meta_slide_delay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ewic_meta_slide_delay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ewic_meta_slide_delay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ewic_meta_slide_delay'"
