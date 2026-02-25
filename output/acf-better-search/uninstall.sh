#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acfbs_fields_types'
wp option delete 'acfbs_whole_phrases'
wp option delete 'acfbs_whole_words'
wp option delete 'acfbs_lite_mode'
wp option delete 'acfbs_selected_mode'

