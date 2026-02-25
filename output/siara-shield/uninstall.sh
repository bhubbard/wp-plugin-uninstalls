#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'siarashield_private_key'
wp option delete 'list_form_data'
wp option delete 'siarashield_css'
wp option delete 'siarashield_commentform'
wp option delete 'siarashield_tocken'
wp option delete 'siarashield_form_selection'
wp option delete 'field_id_class'
wp option delete 'button_id_class'
wp option delete 'button_name'

