#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'joyn_api_key'
wp option delete 'joyn_show_on_thankyou'
wp option delete 'joyn_show_on_order'
wp option delete 'joyn_show_in_mail'

