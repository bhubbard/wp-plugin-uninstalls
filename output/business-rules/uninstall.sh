#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'rules_admin_notice'

# Clear Cron Jobs
wp cron event delete 'rules_scheduler'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rule_actions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rule_actions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rule_actions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rule_actions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rule_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rule_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rule_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rule_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rules_variables'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rules_variables'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rules_variables'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rules_variables'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rule_trigger'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rule_trigger'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rule_trigger'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rule_trigger'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rule_trigger_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rule_trigger_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rule_trigger_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rule_trigger_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rule_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rule_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rule_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rule_log'"
