#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'sgf_global_for_single_id'
wp transient delete 'sgf_global_posts_ids'

