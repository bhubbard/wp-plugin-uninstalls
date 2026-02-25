#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simpleclinic_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'suffix'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'suffix'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'suffix'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'suffix'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobtitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobtitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobtitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobtitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pracphoto'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pracphoto'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pracphoto'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pracphoto'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pracphoto2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pracphoto2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pracphoto2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pracphoto2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_title'"
