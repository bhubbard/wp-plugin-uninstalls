#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dynamic_sitemap_exclude_items'
wp option delete 'dynamic_sitemap_background_color'
wp option delete 'dynamic_sitemap_title_color'

