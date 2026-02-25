#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ajc_exceptions'
wp option delete 'minify_enabled_check'
wp option delete 'minify_css_on'
wp option delete 'head_detect'
wp option delete 'foot_detect'
wp option delete 'css_load_type'
wp option delete 'css_minify'
wp option delete 'cssminify_enabled'
wp option delete 'rediscache_enabled'
wp option delete 'rediscache_server'
wp option delete 'rediscache_port'
wp option delete 'rediscache_pass'
wp option delete 'rediscache_database'
wp option delete 'rediscache_ttl'

