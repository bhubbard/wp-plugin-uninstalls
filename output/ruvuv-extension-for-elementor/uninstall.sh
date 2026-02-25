#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ruvuv-customcss'
wp option delete 'ruvuv-background-color-changing'
wp option delete 'ruvuv-sticky'
wp option delete 'ruvuv-tooltip'
wp option delete 'ruvuv-schedule'
wp option delete 'ruvuv-particle'
wp option delete 'ruvuv-image-moving'
wp option delete 'ruvuv-media-slider'
wp option delete 'ruvuv-relax-parallax'
wp option delete 'ruvuv-column-order'
wp option delete 'ruvuv-heading'
wp option delete 'ruvuv-section-link'
wp option delete 'ruvuv-max-width'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ruvuv-%'"

