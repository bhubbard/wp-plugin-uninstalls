#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auth_key'
wp option delete 'simba_tfa_priv_key_format'
wp option delete 'tfa_incorrect_code_attempts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfa_priv_key_64'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfa_priv_key_64'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfa_priv_key_64'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfa_priv_key_64'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfa_hotp_off_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfa_hotp_off_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfa_hotp_off_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfa_hotp_off_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'simba_tfa_emergency_codes_64'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'simba_tfa_emergency_codes_64'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'simba_tfa_emergency_codes_64'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'simba_tfa_emergency_codes_64'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfa_algorithm_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfa_algorithm_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfa_algorithm_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfa_algorithm_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfa_last_pws'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfa_last_pws'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfa_last_pws'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfa_last_pws'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfa_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfa_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfa_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfa_last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfa_hotp_counter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfa_hotp_counter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfa_hotp_counter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfa_hotp_counter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfa_enable_tfa'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfa_enable_tfa'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfa_enable_tfa'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfa_enable_tfa'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfa_trusted_devices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfa_trusted_devices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfa_trusted_devices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfa_trusted_devices'"
