#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dropdown_query'
wp option delete 'dropdown_allowlinkback'
wp option delete 'dropdown_configmode'
wp option delete 'dropdown_use'
wp option delete 'dropdown_autoembed'
wp option delete 'dropdown_width'
wp option delete 'dropdown_uselegacy'

