#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'FREE_PDA_SETTINGS'
wp option delete 'whitelist_roles'
wp option delete 'remote_log'
wp option delete 'pda_license_key'
wp option delete 'jal_db_version'
wp option delete 'pda_jal_db_version_free'
wp option delete 'pda_is_licensed'
wp option delete 'pda_options'
wp option delete 'FREE_PDA_SETTINGS_IP'
wp option delete 'FREE_PDA_SETTINGS_DOWNLOAD'
wp option delete 'pda_free_is_rewrite_rules'
wp option delete 'updated_htaccess_success'
wp option delete 'pda_free_migrated'
wp option delete 'wpfolio_pda_anylc_redirect'
wp option delete 'wpfolio_pda_anylc_site_uid'

# Delete Transients
wp transient delete 'pda_sidebar_content'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpfolio_pda_anylc_optin_notice_%' OR option_name LIKE '_site_transient_wpfolio_pda_anylc_optin_notice_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpfolio_pda_state_%' OR option_name LIKE '_site_transient_wpfolio_pda_state_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pda_protection'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pda_protection'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pda_protection'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pda_protection'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pda_subscribed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pda_subscribed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pda_subscribed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pda_subscribed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pda_free_subscribe'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pda_free_subscribe'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pda_free_subscribe'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pda_free_subscribe'"
