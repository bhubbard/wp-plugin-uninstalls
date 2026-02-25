#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'atbs_oauth_token'
wp option delete 'atbs_user_identity'
wp option delete 'atbs_guest_identity'
wp option delete 'atbs_flash_messages'
wp option delete 'atbs_is_logged_in'
wp option delete 'atbs_is_guest_logged_in'
wp option delete 'atbs_post_id'
wp option delete 'atbs_user_email'

