#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'codecolorer_language_notification'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notification'"
wp option delete 'codecolorer_lines_to_scroll'
wp option delete 'codecolorer_width'
wp option delete 'codecolorer_height'
wp option delete 'codecolorer_rss_width'
wp option delete 'codecolorer_tab_size'
wp option delete 'codecolorer_theme'
wp option delete 'codecolorer_inline_theme'
wp option delete 'codecolorer_line_numbers'
wp option delete 'codecolorer_disable_keyword_linking'
wp option delete 'codecolorer_css_class'
wp option delete 'codecolorer_css_style'
wp option delete 'codecolorer_concurrent_notification'

