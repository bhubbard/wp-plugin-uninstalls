#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sam_reading_time_words_per_minute'
wp option delete 'sam_reading_time_singular_format'
wp option delete 'sam_reading_time_plural_format'
wp option delete 'sam_reading_time_less_than_a_minute_format'
wp option delete 'sam_reading_time_prefix_text'
wp option delete 'sam_reading_time_suffix_text'
wp option delete 'sam_reading_time_wrapper_tag'
wp option delete 'sam_reading_time_hide_if_less_than_a_minute'
wp option delete 'sam_reading_time_enable_debug_output'
wp option delete 'sam_reading_time_enable_schema_time_required'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sam_reading_time_minutes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sam_reading_time_minutes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sam_reading_time_minutes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sam_reading_time_minutes'"
