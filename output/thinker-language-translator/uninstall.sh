#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thinker_translator_cache_wp_footer'
wp option delete 'thinker_translator_cache_shortcode'
wp option delete 'thinker_translator_settings'
wp option delete 'thinker_translator_db_version'

