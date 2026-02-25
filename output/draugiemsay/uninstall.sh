#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'draugiemsay_apikey'
wp option delete 'cligsapi'
wp option delete 'draugiemsay_pretext'
wp option delete 'draugiemsay_profile'
wp option delete 'draugiemsay_authcode'
wp option delete 'draugiemsay_email'

