#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpbc_provider_btc_username'
wp option delete 'wpbc_provider_btc_password'
wp option delete 'wpbc_provider'
wp option delete 'wpbc_last_cron'
wp option delete 'wpbc_block_cron'
wp option delete 'wpbc_cron_key'
wp option delete 'wpbc_allow_poorman'
wp option delete 'wpbc_settings_saved'
wp option delete 'wpbc_has_fontawesome'
wp option delete 'wpbc_donate_btc'
wp option delete 'wpbc_visible_states'
wp option delete 'wpbc_visible_only_admins'
wp option delete 'wpbc_blockchains'
wp option delete 'wpbc_domain_calls'
wp option delete 'wpbc_schema_version'
wp option delete 'wpbc_provider_username'
wp option delete 'wpbc_post_types'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbc_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbc_provider_ok_%'"
wp option delete 'wpbc_provider_check'
wp option delete 'wpbc_provider_password'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbc_provider_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_username'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_password'"
wp option delete 'wpbc_intro'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%username'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%password'"
wp option delete 'wpbc_restamps'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbc_get_%'"

# Clear Cron Jobs
wp cron event delete 'wpbc_cron_add_every_minute'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpbc_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpbc_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpbc_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpbc_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpbc_stamp_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpbc_stamp_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpbc_stamp_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpbc_stamp_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpbc_stamp_history_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpbc_stamp_history_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpbc_stamp_history_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpbc_stamp_history_%'"
