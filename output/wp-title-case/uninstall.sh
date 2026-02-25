#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thisismyurl_wp_title_case_min_word_length'
wp option delete 'thisismyurl_wp_title_case_ignore_words'
wp option delete 'thisismyurl_title_case'

