#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'SHOPPABLE_RECIPES_review_dismissed'
wp option delete 'save-recipe'
wp option delete 'contacts'
wp option delete 'SHOPPABLE_RECIPES_version'

