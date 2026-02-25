#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mdwh_active'
wp option delete 'mdwh_autokeyword'
wp option delete 'mdwh_token'
wp option delete 'mdwh_zip_url'
wp option delete 'mdwh_username'
wp option delete 'mdwh_password'
wp option delete 'mdwh_tags'
wp option delete 'mdwh_autocat'

