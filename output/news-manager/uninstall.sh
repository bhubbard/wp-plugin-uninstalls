#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'news_manager_general'
wp option delete 'news_manager_permalinks'
wp option delete 'news_manager_capabilities'
wp option delete 'news_manager_version'
wp option delete 'news_manager_activated_blogs'

