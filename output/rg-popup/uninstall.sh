#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rg_popup_enable'
wp option delete 'rg_popup_cookie'
wp option delete 'rg_popup_title'
wp option delete 'rg_popup_content'
wp option delete 'rg_popup_style'
wp option delete 'rg_popup_from'
wp option delete 'rg_popup_to'
wp option delete 'rg_popup_exclude'

