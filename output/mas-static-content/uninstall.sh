#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'current_theme_supports_mas_static_content'
wp option delete 'mas_static_content_queue_flush_rewrite_rules'

