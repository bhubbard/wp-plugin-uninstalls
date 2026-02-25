#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bjl_word_count_main'
wp option delete 'bjl_word_count_cache'
wp option delete 'bjl_word_count_author'
wp option delete 'bjl_word_count_month'

