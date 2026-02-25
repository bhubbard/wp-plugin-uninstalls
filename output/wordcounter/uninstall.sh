#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wordcounter_counter_position'
wp option delete 'wordcounter_counter_show_word_count'
wp option delete 'wordcounter_counter_show_reading_time'
wp option delete 'wordcounter_counter_show_powered_by'

