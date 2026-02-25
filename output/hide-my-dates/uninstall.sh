#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hmd_options'
wp option delete 'hmd_opt_date'
wp option delete 'hmd_opt_modifieddate'
wp option delete 'hmd_opt_comments'

