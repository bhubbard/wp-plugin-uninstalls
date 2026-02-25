#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shipping_by_rules_plugin_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rules_shipping_shipping_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rules_shipping_shipping_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rules_shipping_shipping_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rules_shipping_shipping_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rules_shipping_ruleset'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rules_shipping_ruleset'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rules_shipping_ruleset'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rules_shipping_ruleset'"
