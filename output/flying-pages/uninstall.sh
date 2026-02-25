#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'FLYING_PAGES_VERSION'
wp option delete 'flying_pages_config_delay'
wp option delete 'flying_pages_config_ignore_keywords'
wp option delete 'flying_pages_config_max_rps'
wp option delete 'flying_pages_config_hover_delay'
wp option delete 'flying_pages_config_disable_on_login'

