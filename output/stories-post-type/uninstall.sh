#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stories_pt_prefill_taxonomies'
wp option delete 'stories_pt_category_order'
wp option delete 'stories_pt_sitemap_priority'
wp option delete 'stories_pt_sitemap_frequency'

