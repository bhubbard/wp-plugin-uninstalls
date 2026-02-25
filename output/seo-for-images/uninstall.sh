#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seo_for_images_alt'
wp option delete 'seo_for_images_title'
wp option delete 'seo_for_images_override'
wp option delete 'seo_for_images_override_title'
wp option delete 'seo_for_images_notice'

