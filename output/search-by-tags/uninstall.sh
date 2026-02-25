#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'open_lightbox_event'
wp option delete 'open_link_in_new_page'
wp option delete 'display_google_search'
wp option delete 'display_wp_tags_page'
wp option delete 'display_wiki_search'

