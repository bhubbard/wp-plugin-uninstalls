#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'curiyo_search_page_id'
wp option delete 'curiyo_max_links'
wp option delete 'curiyo_link_color'
wp option delete 'curiyo_site_email'
wp option delete 'curiyo_site_logo'
wp option delete 'curiyo_single_post_on'
wp option delete 'curiyo_pages_on'
wp option delete 'curiyo_home_page_on'
wp option delete 'curiyo_tags_on'
wp option delete 'curiyo_categories_on'
wp option delete 'curiyo_author_archives_on'
wp option delete 'curiyo_search_results_on'
wp option delete 'curiyo_archives_on'
wp option delete 'curiyo_publish_to_curiyo'

