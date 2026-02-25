#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lcmd_hide_when_auth'
wp option delete 'lcmd_gscvc'
wp option delete 'lcmd_gscvf'
wp option delete 'lcmd_gau'
wp option delete 'lcmd_gtm'
wp option delete 'lcmd_gad'
wp option delete 'lcmd_bc'
wp option delete 'lcmd_bcf'
wp option delete 'lcmd_cf7ga'
wp option delete 'lcmd_general'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_name'"
wp option delete 'lcmd_gsvc'

