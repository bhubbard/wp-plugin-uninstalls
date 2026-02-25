#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_placeholder_image'
wp option delete 'mpvw_requirement_notice_ffmpeg'
wp option delete 'mpvw_requirements_notice_woocommerce'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta-box-order_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta-box-order_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta-box-order_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta-box-order_product'"
