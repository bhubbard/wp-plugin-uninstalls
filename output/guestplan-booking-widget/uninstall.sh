#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'guestplan_api_key'
wp option delete 'guestplan_newsletter_hide'
wp option delete 'guestplan_newsletter_default_optin'
wp option delete 'guestplan_widget_language'
wp option delete 'guestplan_auto_open'
wp option delete 'guestplan_hide_btn'
wp option delete 'guestplan_show_specific_pages'
wp option delete 'guestplan_specific_pages_list'

