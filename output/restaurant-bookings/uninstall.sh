#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ae_access_token'
wp option delete 'dm_redirect_admin'
wp option delete 'rb_skin'
wp option delete 'rb_exclude_bootstrap_js'
wp option delete 'rb_exclude_bootstrap_css'

