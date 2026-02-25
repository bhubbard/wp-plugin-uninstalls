#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'search_redirections_rules'
wp option delete 'search_redirections_empty_search_dest'

