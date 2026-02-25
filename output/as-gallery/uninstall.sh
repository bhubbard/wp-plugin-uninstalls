#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'as_gl_sv_opt'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'as_gl_image_column'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'as_gl_image_column'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'as_gl_image_column'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'as_gl_image_column'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'as_gl_image_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'as_gl_image_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'as_gl_image_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'as_gl_image_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'as_gl_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'as_gl_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'as_gl_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'as_gl_image'"
