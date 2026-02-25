#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webclp_background_type'
wp option delete 'webclp_background_image'
wp option delete 'webclp_gradient_color_1'
wp option delete 'webclp_gradient_color_2'
wp option delete 'webclp_custom_logo'

