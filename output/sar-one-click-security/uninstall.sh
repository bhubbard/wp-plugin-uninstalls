#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sar_ocs_apache24_notice'
wp option delete 'sar_ocs_ver'
wp option delete 'sar_ocs_wpc_htaccess'

