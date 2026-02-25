#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lrm_%'"
wp option delete 'lrm_general'
wp option delete 'lrm_advanced'
wp option delete 'lrm_messages'
wp option delete 'lrm_mails'
wp option delete 'lrm_beg_message'
wp option delete 'lrm-forms-init'
wp option delete 'lrm_general_pro'
wp option delete 'lrm_auto_trigger'
wp option delete 'lrm_integrations'
wp option delete 'lrm_messages_pro'
wp option delete 'lrm_pro_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%]'"
wp option delete 'fv_notices'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_updating' OR option_name LIKE '_site_transient_%_updating'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-last-login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-last-login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-last-login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-last-login'"
