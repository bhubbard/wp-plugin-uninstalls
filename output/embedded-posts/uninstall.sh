#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'embeddedposts_page_taxonomies_options'
wp option delete 'embeddedposts_template_all_link'
wp option delete 'embeddedposts_get_the_title'
wp option delete 'embeddedposts_get_the_title_link'
wp option delete 'embeddedposts_get_the_thumbnail'
wp option delete 'embeddedposts_get_the_thumbnail_link'
wp option delete 'embeddedposts_get_the_author'
wp option delete 'embeddedposts_the_category'
wp option delete 'embeddedposts_the_tags'
wp option delete 'embeddedposts_the_excerpt'

