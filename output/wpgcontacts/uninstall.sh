#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpgoco_info'
wp option delete 'wpgoco_license_key'
wp option delete 'wpgoco_access_code'
wp option delete 'wpgoco_verify'
wp option delete 'wpgoco_token'
wp option delete 'google_sheet_info'
wp option delete 'wpgoco_cf7_field_map'
wp option delete 'wpgoco_wpform_field_map'
wp option delete 'wpgoco_gravityform_field_map'
wp option delete 'wpgoco_ninjaform_field_map'
wp option delete 'wpgoco_manual_setting'
wp option delete 'wpgoco_access_manual_code'
wp option delete 'wpgoco_client_id'
wp option delete 'wpgoco_secret_id'
wp option delete 'wpgoco_sheetId'
wp option delete 'wpgoco_sheetTabs'
wp option delete 'wpgoco_email_account'
wp option delete 'wpgoco_pro_upgrade_notice_interval'
wp option delete 'wpgoco_pro_close_upgrade_notice'
wp option delete 'wpgoco_token_manual'
wp option delete 'wpgoco_email_account_manual'

