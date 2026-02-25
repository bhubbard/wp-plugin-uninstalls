#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'demon_image_annotation_display'
wp option delete 'demon_image_annotation_comments'
wp option delete 'demon_image_annotation_postcontainer'
wp option delete 'demon_image_annotation_admin'
wp option delete 'demon_image_annotation_autoresize'
wp option delete 'demon_image_annotation_numbering'
wp option delete 'demon_image_annotation_clickable_text'
wp option delete 'demon_image_annotation_mouseoverdesc'
wp option delete 'demon_image_annotation_maxlength'
wp option delete 'demon_image_annotation_linkoption'
wp option delete 'demon_image_annotation_linkdesc'
wp option delete 'demon_image_annotation_thumbnail'
wp option delete 'demon_image_annotation_pluginver'
wp option delete 'demon_image_annotation_autoimageid'
wp option delete 'demon_image_annotation_autoapprove'
wp option delete 'demon_image_annotation_gravatar'
wp option delete 'demon_image_annotation_gravatar_deafult'
wp option delete 'demon_image_annotation_everypage'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dia_admin_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dia_admin_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dia_admin_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dia_admin_ignore_notice'"
