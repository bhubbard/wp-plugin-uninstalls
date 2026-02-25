#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easyshare_icons_path'
wp option delete 'easyshare_mode'
wp option delete 'easyshare_title'
wp option delete 'easyshare_bookmarktext'
wp option delete 'easyshare_class'
wp option delete 'easyshare_position_article'
wp option delete 'easyshare_position_page'
wp option delete 'easyshare_custom_css'
wp option delete 'easyshare_services_liste'
wp option delete 'easyshare_services'
wp option delete 'easyshare_test_mode'

