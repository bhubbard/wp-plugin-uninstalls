#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'instant_search_post_types'
wp option delete 'instant_search_display_style'
wp option delete 'instant_search_placeholder'
wp option delete 'instant_search_form_width'
wp option delete 'instant_search_form_width2'
wp option delete 'instant_search_method'
wp option delete 'instant_search_enable_voice_search'
wp option delete 'instant_search_results_per_page'

