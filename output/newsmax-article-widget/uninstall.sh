#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'newsmax_nm_client_id'
wp option delete 'newsmax_nm_template'
wp option delete 'newsmax_nm_article_selector'
wp option delete 'newsmax_nm_cloudflare_async'

