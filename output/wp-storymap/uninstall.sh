#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'storymap_pro_stories_db_version'
wp option delete 'storymap_pro_example_db_version'
wp option delete 'storymap_pro_options'

