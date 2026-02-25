#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bverse_bible_ref_services'
wp option delete 'bverse_bible_version'
wp option delete 'bverse_open_new_window'
wp option delete 'bverse_popover'
wp option delete 'bverse_bibles_max_depth'
wp option delete 'bverse_credits'
wp option delete 'bverse_biblia_social'

