#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hajimecreate_text_weaver_environment_settings'
wp option delete 'hajimecreate_text_weaver_config'
wp option delete 'hajimecreate_text_weaver_api_url'
wp option delete 'hajimecreate_text_weaver_default_cache_time'
wp option delete '_transient_keys'
wp option delete 'hajimecreate_text_weaver_api_key'
wp option delete 'hajimecreate_text_weaver_logs'

