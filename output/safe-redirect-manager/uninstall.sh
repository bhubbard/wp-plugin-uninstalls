#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete '_srm_redirects_graph'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient__srm_redirects_%' OR option_name LIKE '_site_transient__srm_redirects_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redirect_rule_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redirect_rule_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redirect_rule_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redirect_rule_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redirect_rule_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redirect_rule_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redirect_rule_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redirect_rule_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redirect_rule_status_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redirect_rule_status_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redirect_rule_status_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redirect_rule_status_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_force_https'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_force_https'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_force_https'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_force_https'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redirect_rule_from_regex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redirect_rule_from_regex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redirect_rule_from_regex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redirect_rule_from_regex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redirect_rule_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redirect_rule_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redirect_rule_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redirect_rule_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redirect_rule_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redirect_rule_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redirect_rule_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redirect_rule_notes'"
