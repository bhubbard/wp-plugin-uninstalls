#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autopaging_post_types'
wp option delete 'autopaging_paging_type'
wp option delete 'autopaging_num_pages'
wp option delete 'autopaging_num_words'

