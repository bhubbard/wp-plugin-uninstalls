#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sp_kas_protect'
wp option delete 'sp_kas_ajax_key'
wp option delete 'sp_kas_send_log'
wp option delete 'sp_kas_send_log_to'
wp option delete 'sp_kas_send_log_at'
wp option delete 'sp_kas_log_post'
wp option delete 'sp_kas_error_url'
wp option delete 'sp_kas_ajax_head'
wp option delete 'sp_kas_exclude'
wp option delete 'sp_kas_log_sent'

