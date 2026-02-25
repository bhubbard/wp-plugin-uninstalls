#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ART_plugin_installed'
wp option delete 'ART_plugin_version'
wp option delete 'article_reading_time_location'
wp option delete 'article_reading_time_title'
wp option delete 'article_reading_time_word_count'
wp option delete 'article_reading_time_character_count'
wp option delete 'article_reading_time_read_time'

