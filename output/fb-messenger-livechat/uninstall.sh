#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fbmsg_version'
wp option delete 'fbmsg_title'
wp option delete 'fbmsg_page'
wp option delete 'fbmsg_timeline'
wp option delete 'fbmsg_events'
wp option delete 'fbmsg_pos'
wp option delete 'fbmsg_lang'
wp option delete 'fbmsg_active'

