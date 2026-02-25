#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ninfa_archives_noindex'
wp option delete 'ninfa_archives_nofollow'
wp option delete 'ninfa_categories_noindex'
wp option delete 'ninfa_categories_nofollow'
wp option delete 'ninfa_tags_noindex'
wp option delete 'ninfa_tags_nofollow'

