#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easy_excerpt_length'
wp option delete 'easy_excerpt_more'
wp option delete 'easy_excerpt_more_link'
wp option delete 'easy_excerpt'

