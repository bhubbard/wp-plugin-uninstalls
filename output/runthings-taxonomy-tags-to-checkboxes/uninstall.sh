#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'runthings_ttc_selected_taxonomies'
wp option delete 'runthings_ttc_height_settings'
wp option delete 'runthings_ttc_show_links'
wp option delete 'runthings_ttc_allow_term_create'
wp option delete 'runthings_ttc_search_settings'

