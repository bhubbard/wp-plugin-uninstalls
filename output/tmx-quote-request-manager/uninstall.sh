#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wqrm_poll_interval_seconds'
wp option delete 'wqrm_api_token'
wp option delete 'wqrm_api_base_url'
wp option delete 'wqrm_prefill_enabled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wqrm_prefill_request'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wqrm_prefill_request'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wqrm_prefill_request'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wqrm_prefill_request'"
