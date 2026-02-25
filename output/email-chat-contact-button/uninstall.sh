#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Sidebar_Contact_Me_Button_Username'
wp option delete 'Sidebar_Contact_Me_Button_DisplayName'
wp option delete 'Sidebar_Contact_Me_Button_buttonType'
wp option delete 'Sidebar_Contact_Me_Button_overlay'

