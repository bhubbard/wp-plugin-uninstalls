#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'charades_categories_combined'
wp option delete 'charades_words'
wp option delete 'charades_custom_texts'

