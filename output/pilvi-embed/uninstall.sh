#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pilvi_emb_compare'
wp option delete 'pilvi_emb_https'
wp option delete 'pilvi_emb_version'
wp option delete 'pilvi_emb_api_host'
wp option delete 'pilvi_emb_session_host'
wp option delete 'pilvi_emb_language'
wp option delete 'pilvi_emb_prices'
wp option delete 'pilvi_embed_plugin_version'
wp option delete 'js_pilvi_emb_version'
wp option delete 'js_pilvi_emb_session_host'
wp option delete 'js_pilvi_emb_api_host'
wp option delete 'js_pilvi_emb_https'
wp option delete 'js_pilvi_emb_language'
wp option delete 'js_pilvi_emb_prices'
wp option delete 'js_pilvi_emb_compare'

