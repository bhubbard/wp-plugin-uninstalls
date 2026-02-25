#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lbs_bible_version'
wp option delete 'lbs_libronix'
wp option delete 'lbs_existing_libronix'
wp option delete 'lbs_libronix_color'
wp option delete 'lbs_tooltips'
wp option delete 'lbs_search_comments'
wp option delete 'lbs_nosearch'
wp option delete 'lbs_new_window'
wp option delete 'lbs_libronix_bible_version'
wp option delete 'lbs_convert_hyperlinks'
wp option delete 'lbs_case_insensitive'
wp option delete 'lbs_tag_chapters'

