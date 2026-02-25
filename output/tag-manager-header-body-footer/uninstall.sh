#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yydev_tag_mangage_wp_body_open'
wp option delete 'yydev_tagmanager_main_menu'
wp option delete 'yydev_stop_plugins_notice'

