#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dd_isl_pronto_scripturl'
wp option delete 'dd_isl_pronto_imagepath'
wp option delete 'dd_isl_pronto_offlineurl'
wp option delete 'dd_isl_pronto_domain'
wp option delete 'dd_isl_pronto_filter'
wp option delete 'dd_isl_pronto_stayontop'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dd_isl_pronto_%'"
wp option delete 'dd_isl_pronto_showall'
wp option delete 'dd_isl_pronto_position'

