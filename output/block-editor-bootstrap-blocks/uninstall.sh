#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'BootstrapBlocks_settings'
wp option delete 'BootstrapBlocks_experiments'
wp option delete 'Bootstrap_config_options'
wp option delete 'Bootstrap_config_breakpoints'
wp option delete 'Bootstrap_config_container'
wp option delete 'Bootstrap_config_gutter'
wp option delete 'Bootstrap_config_scss_overrides'
wp option delete 'Bootstrap_config_imports'
wp option delete 'BootstrapBlocksActivated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bootstrap_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bootstrap_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bootstrap_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bootstrap_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
