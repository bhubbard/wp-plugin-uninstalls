#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpadt_check_individual_types'
wp option delete 'wpadt_allow_duplicate_titles'
wp option delete 'wpadt_selected_post_types'

