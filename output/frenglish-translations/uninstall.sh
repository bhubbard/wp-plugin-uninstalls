#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'frenglish_cache_salt'
wp option delete 'frenglish_server_side_translations'
wp option delete 'frenglish_api_key'
wp option delete 'frenglish_supported_languages'
wp option delete 'frenglish_origin_language'
wp option delete 'frenglish_config_fetched_at'
wp option delete 'frenglish_excluded_translation_blocks'
wp option delete 'frenglish_config_rev'
wp option delete 'frenglish_cache_keys'

