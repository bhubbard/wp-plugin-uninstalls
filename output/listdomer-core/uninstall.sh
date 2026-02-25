#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lsdrc_activation_redirect'
wp option delete 'sidebars_widgets'
wp option delete 'widget_nav_menu'
wp option delete 'lsd_settings'
wp option delete 'lsd_activation_redirect'
wp option delete '_afeb_activation_redirect'
wp option delete 'listdomer_theme_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lsdr_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lsdr_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lsdr_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lsdr_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lsdr_footer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lsdr_footer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lsdr_footer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lsdr_footer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lsd_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lsd_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lsd_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lsd_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lsd_primary_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lsd_primary_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lsd_primary_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lsd_primary_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lsd_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lsd_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lsd_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lsd_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lsd_devices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lsd_devices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lsd_devices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lsd_devices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lsd_skin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lsd_skin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lsd_skin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lsd_skin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lsd_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lsd_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lsd_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lsd_display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lsd_search'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lsd_search'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lsd_search'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lsd_search'"
