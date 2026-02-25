#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xtfe_user_token_options'
wp option delete 'xtfe_transient_keys'
wp option delete 'xtfe_fb_authorize_user'
wp option delete 'xtfe_fb_user_pages'

# Delete Transients
wp transient delete 'xtfe_facebook_access_token'

