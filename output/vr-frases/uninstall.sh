#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vr_frases_options'
wp option delete 'vr_frases_version'
wp option delete 'vr_frases_activation_time'
wp option delete 'vr_frases_deactivation_time'
wp option delete 'vr_frases_needs_upgrade'
wp option delete 'vr_frases_last_upgrade_attempt'
wp option delete 'vr_frases_last_successful_upgrade'
wp option delete 'vr_frases_last_upgrade_log'
wp option delete 'vr_frases_failed_upgrade_log'
wp option delete 'vr_frases_upgrade_failed'
wp option delete 'vr_frases_upgrade_notice_shown'
wp option delete 'vr_frases_upgrade_log'
wp option delete 'wiki_lang'
wp option delete 'vr_frases_cleanup_done'
wp option delete 'vr_frases_last_cleanup_log'
wp option delete 'vr_frases_debug_mode'
wp option delete 'vr_frases_debug_logs'

# Delete Transients
wp transient delete 'vr_frases_upgrade_lock'
wp transient delete 'vr_frases_clases_for_js'
wp transient delete 'vr_frases_temas_for_js'
wp transient delete 'vr_frases_cache'

# Clear Cron Jobs
wp cron event delete 'vr_frases_scheduled_event'

