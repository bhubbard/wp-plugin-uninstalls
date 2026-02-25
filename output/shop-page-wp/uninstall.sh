#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shop-page-wp-button-text'
wp option delete 'shop-page-wp-show-choose-styles'
wp option delete 'shop-page-wp-show-default-columns'
wp option delete 'shop-page-wp-link-target'
wp option delete 'shop-page-wp-legacy-format'
wp option delete 'shop-page-wp-image-width'
wp option delete 'shop-page-wp-image-height'
wp option delete 'shop-page-wp-image-crop'
wp option delete 'shop-page-wp-iw-field-change'
wp option delete 'shop-page-wp-ih-field-change'
wp option delete 'shop-page-wp-ic-field-change'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
