#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cp_module_authtopupcp_account'
wp option delete 'cp_module_authtopupcp_transaction'
wp option delete 'cp_module_authtopupcp_sandbox'
wp option delete 'cp_module_authtopupcp_currency'
wp option delete 'cp_module_authtopupcp_item'
wp option delete 'cp_module_authtopupcp_cancel'
wp option delete 'cp_module_authtopupcp_thankyou'
wp option delete 'cp_module_authtopupcp_price'
wp option delete 'cp_module_authtopupcp_min'
wp option delete 'cp_module_authtopupcp_form'

