#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dsfse_default_rules_created'

# Delete Transients
wp transient delete 'dsfse_plugin_welcome_screen_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dsfse_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dsfse_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dsfse_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dsfse_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dsfse_rule_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dsfse_rule_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dsfse_rule_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dsfse_rule_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dsfse_target_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dsfse_target_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dsfse_target_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dsfse_target_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dsfse_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dsfse_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dsfse_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dsfse_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dsfse_is_default_rule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dsfse_is_default_rule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dsfse_is_default_rule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dsfse_is_default_rule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dsfse_occasion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dsfse_occasion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dsfse_occasion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dsfse_occasion'"
