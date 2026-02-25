#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'download_path'
wp option delete 'download_categories'
wp option delete 'download_path_url'
wp option delete 'download_page_url'
wp option delete 'download_nice_permalink'
wp option delete 'download_options'
wp option delete 'download_method'
wp option delete 'download_sort'
wp option delete 'rss_language'
wp option delete 'download_template_header'
wp option delete 'download_template_footer'
wp option delete 'download_template_pagingheader'
wp option delete 'download_template_pagingfooter'
wp option delete 'download_template_none'
wp option delete 'download_template_category_header'
wp option delete 'download_template_category_footer'
wp option delete 'download_template_listing'
wp option delete 'download_template_embedded'
wp option delete 'download_template_download_page_link'
wp option delete 'download_template_most'
wp option delete 'stats_display'
wp option delete 'stats_mostlimit'
wp option delete 'widget_download_recent_downloads'
wp option delete 'widget_download_most_downloaded'

