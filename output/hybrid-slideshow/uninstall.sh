#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hybrid-slideshow-option-width'
wp option delete 'hybrid-slideshow-option-height'
wp option delete 'hybrid-slideshow-option-delay'
wp option delete 'hybrid-slideshow-option-transition'
wp option delete 'hybrid-slideshow-option-random'
wp option delete 'hybrid-slideshow-option-javascript'
wp option delete 'hybrid-slideshow-option-images'
wp option delete 'hybrid-slideshow-option-width-prev'
wp option delete 'hybrid-slideshow-option-height-prev'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
