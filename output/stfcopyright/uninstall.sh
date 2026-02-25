#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stf_tools'
wp option delete 'stf_tools_iyear'
wp option delete 'stf_tools_uyear'
wp option delete 'stf_tools_aoutupdate'
wp option delete 'stf_tools_owner'
wp option delete 'stf_tools_type'
wp option delete 'stf_tools_freetext'

