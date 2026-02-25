#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'developer_sitemap_options'

# Delete Transients
wp transient delete 'developer_sitemap_cache_index'
wp transient delete 'developer_sitemap_cache_post'
wp transient delete 'developer_sitemap_cache_page'
wp transient delete 'developer_sitemap_cache_product'
wp transient delete 'developer_sitemap_cache_taxonomy'
wp transient delete 'developer_sitemap_cache_author'

