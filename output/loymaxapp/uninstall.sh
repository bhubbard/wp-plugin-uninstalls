#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'theme_mods_customify'
wp option delete 'loymax_install_wizard_in_progress'
wp option delete 'loymax-page-link'
wp option delete 'loymax-page-title'
wp option delete 'loymax-navigation-menu-id'
wp option delete 'loymax-personal-menu-item-id'
wp option delete 'loymax-component-order'
wp option delete 'jal_db_version'
wp option delete 'loymax_update_error'
wp option delete 'loymax_page_ID'
wp option delete 'loymax_plugin_updated'
wp option delete 'loymax_page_delete_prevented'
wp option delete 'loymax_menu_delete_prevented'

