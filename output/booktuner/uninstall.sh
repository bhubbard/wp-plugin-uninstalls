#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'booktuner_update_frequency'
wp option delete 'booktuner_cachepath'
wp option delete 'booktuner_limit'
wp option delete 'booktuner_userid'
wp option delete 'booktuner_shelf'
wp option delete 'booktuner_sort'
wp option delete 'booktuner_sort_order'
wp option delete 'booktuner_display_format'
wp option delete 'booktuner_image_size'
wp option delete 'booktuner_review_length'

