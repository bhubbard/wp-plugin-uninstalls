#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpgs_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gspeech_%'"
wp option delete 'gspeech_version_index'
wp option delete 'gspeech_crypto'
wp option delete 'gspeech_reload_session'
wp option delete 'gspeech_sh_w_loaded'
wp option delete 'gspeech_sh_'
wp option delete 'gspeech_plan'
wp option delete 'gspeech_appsumo'
wp option delete 'GTranslate'
wp option delete 'GSpeech'
wp option delete 'gspeech_db_version'
wp option delete 'gspeech_admin_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_admin_notice'"

# Delete Transients
wp transient delete 'gspeech_settings_cache'
wp transient delete 'gsp_crypto_cache'

