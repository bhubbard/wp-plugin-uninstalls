#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'newpost_catch'
wp option delete 'widget_newpostcatch'
wp option delete 'npc_search_posts'

