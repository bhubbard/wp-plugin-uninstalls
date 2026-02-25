#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lws_aff_apikey'
wp option delete 'lwsaff_do_not_ask_again'

# Delete Transients
wp transient delete 'lwsaff_remind_me'
wp transient delete 'lws_aff_banners'
wp transient delete 'lws_aff_banner'

