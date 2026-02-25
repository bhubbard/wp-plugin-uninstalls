#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ovm_po_db_version'
wp option delete 'po_premium_info'
wp option delete 'ovm_po_uninstall_delete'
wp option delete 'active_tab'

