#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eloquent_post_title_selector'
wp option delete 'eloquent_post_content_selector'
wp option delete 'eloquent_page_title_selector'
wp option delete 'eloquent_page_content_selector'

