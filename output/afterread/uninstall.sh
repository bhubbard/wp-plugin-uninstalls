#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'afterRead_secure'
wp option delete 'afterRead_suggestion_name'
wp option delete 'afterRead_custom_html'
wp option delete 'afterRead_option_ichi'
wp option delete 'afterRead_option_ni'
wp option delete 'afterRead_option_san'
wp option delete 'afterRead_option_inchi'

