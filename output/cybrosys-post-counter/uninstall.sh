#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cpcp_view_count_option'
wp option delete 'cpcp_view_label'
wp option delete 'cpcp_word_count_option'
wp option delete 'cpcp_word_label'
wp option delete 'cpcp_char_count_option'
wp option delete 'cpcp_char_label'
wp option delete 'cpcp_display_content'

