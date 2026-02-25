#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sp_spl_payulatam_user'
wp option delete 'sp_spl_payulatam_password'
wp option delete 'sp_spl_payulatam_accountid'
wp option delete 'sp_spl_payulatam_language'

