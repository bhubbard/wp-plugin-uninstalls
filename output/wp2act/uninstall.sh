#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'crmaddon_actSetting_option'
wp option delete 'crmaddon_pageShow_option'
wp option delete 'crmaddon_link_option'

