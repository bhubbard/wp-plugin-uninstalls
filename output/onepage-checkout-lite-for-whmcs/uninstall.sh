#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_onepchli_page_id'
wp option delete '_onepchli_selected_template'
wp option delete 'csf_demo_mode'
wp option delete 'one-page-whmcs-admin-page'

