#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ljpl-trakttv-use-css'
wp option delete 'ljpl-trakttv-has-private-account'
wp option delete 'ljpl-trakttv-login'
wp option delete 'ljpl-trakttv-password'
wp option delete 'ljpl-trakttv-api-key'

