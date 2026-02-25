#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'minicache_enabled'
wp option delete 'minicache_ttl'
wp option delete 'minicache_store_gzip'
wp option delete 'minicache_device_bucket'
wp option delete 'minicache_min_bytes'
wp option delete 'minicache_ignore_query_keys'
wp option delete 'minicache_allow_query_keys'
wp option delete 'minicache_lang_cookie_keys'
wp option delete 'minicache_bypass_cookie_prefixes'

