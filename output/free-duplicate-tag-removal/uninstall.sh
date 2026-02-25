#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fdtr_enable_feature'
wp option delete 'fdtr_tag_names'
wp option delete 'fdtr_exclude_posts'
wp option delete 'fdtr_exclude_pages'

