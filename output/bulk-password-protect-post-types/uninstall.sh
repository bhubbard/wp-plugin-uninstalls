#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pass_protect_all_select_types'
wp option delete 'pass_protect_all_pass_field'

