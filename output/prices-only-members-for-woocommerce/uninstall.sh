#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dc_pomfw_activate'
wp option delete 'dc_pomfw_message'
wp option delete 'dc_pomfw_position'
wp option delete 'dc_pomfw_login_text'
wp option delete 'dc_pomfw_login_link'
wp option delete 'dc_pomfw_register_text'
wp option delete 'dc_pomfw_register_link'

