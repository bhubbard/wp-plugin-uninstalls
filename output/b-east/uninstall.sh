#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'beast_close_orders'
wp option delete 'beast_autosync'
wp option delete 'beast_requestlabel'
wp option delete 'beast_referencetemplate'
wp option delete 'beast_apikey'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_beast_account_info-%' OR option_name LIKE '_site_transient_beast_account_info-%'"

