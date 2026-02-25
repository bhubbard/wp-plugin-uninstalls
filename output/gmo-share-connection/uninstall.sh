#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gmo_share_connection_single'
wp option delete 'gmo_share_connection_page'
wp option delete 'gmo_share_connection_home'
wp option delete 'gmo_share_connection_before_content'
wp option delete 'gmo_share_connection_after_content'
wp option delete 'gmo_share_connection_socials'

