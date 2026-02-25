#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'one_click_start_saved_recipe'
wp option delete 'one_click_start_show_review_prompt'
wp option delete 'enable_xmlrpc'
wp option delete 'ocs_saved_recipe'

