#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gtw_servernum'
wp option delete 'gtw_field_servernum'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gtw_field_%'"
wp option delete 'gtw_autojoin'
wp option delete 'gtw_timezone'
wp option delete 'gtw_registered'
wp option delete 'gtw_field_firstname'
wp option delete 'gtw_field_lastname'
wp option delete 'gtw_field_email'
wp option delete 'gtw_field_phone'
wp option delete 'gtw_field_gtwid'

