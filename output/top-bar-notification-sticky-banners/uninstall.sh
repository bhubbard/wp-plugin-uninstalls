#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'topbarnsb_activation'
wp option delete 'topbarnsb_settings'
wp option delete 'topbarnsb_css'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_topbarnsb_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_topbarnsb_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_topbarnsb_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_topbarnsb_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_topbarnsb_banner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_topbarnsb_banner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_topbarnsb_banner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_topbarnsb_banner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
