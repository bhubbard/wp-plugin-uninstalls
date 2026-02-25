#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ob_campayn_apikey'
wp option delete 'campayn_forms_table'
wp option delete 'ob_campayn_list'
wp option delete 'ob_campayn_enabled'
wp option delete 'ob_campayn_text'
wp option delete 'campayn_dbversion'

