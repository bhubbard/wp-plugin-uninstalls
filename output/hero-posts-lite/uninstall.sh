#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hero_posts_words_per_minute'
wp option delete 'hero_posts_image_replacement'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-license'"

