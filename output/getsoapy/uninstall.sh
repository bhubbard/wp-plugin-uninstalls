#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'getsoapy_business_id'
wp option delete 'getsoapy_hide_fields'
wp option delete 'getsoapy_styles'
wp option delete 'getsoapy_plugin_options'
wp option delete 'getsoapy_disable_styles'
wp option delete 'getsoapy_quote_in_pages'
wp option delete 'getsoapy_show_fab'

