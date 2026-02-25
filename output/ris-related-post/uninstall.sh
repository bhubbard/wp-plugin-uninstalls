#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ris_related_post_related_by'
wp option delete 'ris_related_post_number_of_posts'
wp option delete 'ris_related_post_display_layout'

