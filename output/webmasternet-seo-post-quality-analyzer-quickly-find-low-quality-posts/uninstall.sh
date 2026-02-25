#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'post_analyzer_word'
wp option delete 'post_analyzer_img'
wp option delete 'post_analyzer_head'
wp option delete 'post_analyzer_para'
wp option delete 'post_analyzer_date'

