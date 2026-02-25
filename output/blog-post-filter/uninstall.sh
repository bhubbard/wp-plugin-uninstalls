#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blogPostFilterStickyPosts'
wp option delete 'blogPostFilterCategories'

