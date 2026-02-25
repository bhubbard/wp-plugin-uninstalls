#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'termageddon_usercentrics_settings_id'
wp option delete 'termageddon_usercentrics_embed_code'
wp option delete 'termageddon_usercentrics_script_snippets'
wp option delete 'termageddon_usercentrics_disable_admin'
wp option delete 'termageddon_usercentrics_disable_editor'
wp option delete 'termageddon_usercentrics_disable_logged_in'
wp option delete 'termageddon_usercentrics_location_psl_hide'
wp option delete 'termageddon_usercentrics_psl_alternate'
wp option delete 'termageddon_usercentrics_embed_priority'
wp option delete 'termageddon_usercentrics_embed_injection_method'
wp option delete 'termageddon_usercentrics_embed_version'
wp option delete 'termageddon_usercentrics_disable_auto_blocker'
wp option delete 'termageddon_usercentrics_disable_cdn'
wp option delete 'termageddon_usercentrics_disable_troubleshooting'
wp option delete 'termageddon_usercentrics_geoip_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'termageddon_usercentrics_show_in_%'"
wp option delete 'termageddon_usercentrics_location_debug'
wp option delete 'termageddon_usercentrics_location_ajax'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'termageddon_usercentrics_integration_%'"
wp option delete 'termageddon_usercentrics_auto_refresh_providers'
wp option delete 'termageddon_usercentrics_disable_blocking_providers'
wp option delete 'termageddon_usercentrics_download_error_count'
wp option delete 'termageddon_usercentrics_download_error_log'

# Clear Cron Jobs
wp cron event delete 'termageddon_usercentrics_maxmind_download'

