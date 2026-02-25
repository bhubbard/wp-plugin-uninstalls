#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ctdb_done_redirect'
wp option delete 'ctdb_review_notice_dismissed'
wp option delete 'ctdb_pro_notice_dismissed'
wp option delete 'ctdb_review_plugin_notice_dismissed'
wp option delete 'ctdb_install_date'
wp option delete 'ctdb_database_version'
wp option delete 'ctdb_updated_from_version'
wp option delete 'ctdb_upgrade_settings'
wp option delete 'ctdb_user_settings'
wp option delete 'ctdb_options_settings'
wp option delete 'ctdb_design_settings'
wp option delete 'ctdb_nag_dismissed'
wp option delete 'ctdb_categories_settings'
wp option delete 'ctdb_recaptcha_settings'
wp option delete 'ctdb_wizard_done'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'activate_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'activate_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'activate_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'activate_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ctdb_uniqid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ctdb_uniqid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ctdb_uniqid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ctdb_uniqid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ctdb_author_opted_out'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ctdb_author_opted_out'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ctdb_author_opted_out'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ctdb_author_opted_out'"
