#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cmx_ccm_call_dir_target'
wp option delete 'cmx_ccm_vers'
wp option delete 'cmx_ccm_ip_whitelist'

