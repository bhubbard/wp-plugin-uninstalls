#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pb_duplicate_post_status'
wp option delete 'pb_duplicate_post_redirect'
wp option delete 'pb_duplicate_post_types'
wp option delete 'pb_duplicate_post_prefix'
wp option delete 'pb_duplicate_post_suffix'
wp option delete 'pb_duplicate_post_copy_terms'
wp option delete 'pb_duplicate_post_copy_meta'

