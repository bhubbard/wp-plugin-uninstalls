#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sitetran_authentication_key'
wp option delete 'sitetran_site_id'
wp option delete 'sitetran_connect_google_analytics'
wp option delete 'sitetran_auto_detect_language'
wp option delete 'sitetran_original_language_code'
wp option delete 'sitetran_target_languages'
wp option delete 'sitetran_had_conflict'
wp option delete 'sitetran_plugin_conflict_message'
wp option delete 'sitetran_pages_sent'
wp option delete 'sitetran_intialize_success_message_seen'
wp option delete 'sitetran_flush_rewrite_rules'
wp option delete 'sitetran_db_version'

