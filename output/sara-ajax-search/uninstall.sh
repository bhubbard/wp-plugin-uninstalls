#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dr_sara_search_d_post'
wp option delete 'dr_sara_search_total'
wp option delete 'dr_sara_search_thumbnail'
wp option delete 'dr_sara_search_title'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dr_sara_search_%'"

