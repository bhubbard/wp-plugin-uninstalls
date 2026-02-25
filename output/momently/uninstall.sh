#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'momently_script'
wp option delete 'momently_site_id'
wp option delete 'momently_track_admin'
wp option delete 'momently_automatic_updates'
wp option delete 'momently_custom_taxonomy_cat'
wp option delete 'momently_lowercase_tags'
wp option delete 'momently_top_level_cat'
wp option delete 'momently_cats_as_tags'

