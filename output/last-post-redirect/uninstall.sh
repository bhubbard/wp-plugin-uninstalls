#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'last_post_redirect_way'
wp option delete 'last_post_redirect_post_type'
wp option delete 'last_post_redirect_post_status'
wp option delete 'last_post_redirect_get_name'

