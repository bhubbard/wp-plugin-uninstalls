#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lgre_elementor_login_align'
wp option delete 'lgre_elementor_forms_align'
wp option delete 'lgre_ip_blocklist_enabled'
wp option delete 'lgre_ip_blocklist'
wp option delete 'lgre_adv_schema_migrated'
wp option delete 'lgre_autoload_fix_done'
wp option delete 'lgre_delete_data_on_uninstall'

# Delete Transients
wp transient delete 'lgre_recaptcha_enable_blocked_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lgre_admin_conflict_notice_seen_v2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lgre_admin_conflict_notice_seen_v2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lgre_admin_conflict_notice_seen_v2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lgre_admin_conflict_notice_seen_v2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lgre_admin_setup_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lgre_admin_setup_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lgre_admin_setup_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lgre_admin_setup_notice_dismissed'"
