#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'customlogin_heading'
wp option delete 'customlogin_register_link'
wp option delete 'customlogin_forgotton_link'
wp option delete 'customlogin_welcome_heading'
wp option delete 'customlogin_avatar'
wp option delete 'customlogin_logged_in_links'
wp option delete 'customlogin_cubepoints'
wp option delete 'customlogin_cubepoints_text'

