#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'GTPress'
wp option delete 'gtpressMenu_default_menu'
wp option delete 'gtpressMenu_default_submenu'
wp option delete 'gtpressMenu_disabled_menu_items'
wp option delete 'gtpressMenu_disabled_submenu_items'
wp option delete 'gtpressMenu_disabled_metas'
wp option delete 'GTTabs'
wp option delete 'gtpressMenu_admins_see_everything'

