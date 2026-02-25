#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jwdm_plugins_hidden'
wp option delete 'jwdm_options'
wp option delete 'jwdm_menuitems_hidden'
wp option delete 'jwdm_version'

