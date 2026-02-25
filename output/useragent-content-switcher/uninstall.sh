#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uac_switcher'
wp option delete 'useragentcontentswitcher_useragent_tb'
wp option delete 'useragentcontentswitcher_useragent_sp'
wp option delete 'useragentcontentswitcher_useragent_mb'

