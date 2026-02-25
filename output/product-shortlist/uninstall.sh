#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ced_ps_general_settings'
wp option delete 'ced_ps_smtp_settings'
wp option delete 'ced_ps_email_template_settings'
wp option delete 'ced_ps_plugin_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
