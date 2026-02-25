#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thumbnails_per_page'
wp option delete 'paginated_links'
wp option delete 'hide_effect'
wp option delete 'show_effect'
wp option delete 'effect_speed'

