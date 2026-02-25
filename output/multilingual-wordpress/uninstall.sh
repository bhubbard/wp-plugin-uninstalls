#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'redirect_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'session_lang_%'"
wp option delete 'automatic_lang_redirection'
wp option delete 'show_lang_warnings'
wp option delete 'show_alternatives_box'
wp option delete 'session_lang_redirection'

