#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'movylo_disabled'
wp option delete 'movylo_embed_code'
wp option delete 'movylo_api_id'
wp option delete 'movylo_api_secret'
wp option delete 'movylo_store_id'
wp option delete 'movylo_access_token'
wp option delete 'movylo_refresh_token'

