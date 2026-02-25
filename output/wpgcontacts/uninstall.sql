-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpgoco_info', 'wpgoco_license_key', 'wpgoco_access_code', 'wpgoco_verify', 'wpgoco_token', 'google_sheet_info', 'wpgoco_cf7_field_map', 'wpgoco_wpform_field_map', 'wpgoco_gravityform_field_map', 'wpgoco_ninjaform_field_map', 'wpgoco_manual_setting', 'wpgoco_access_manual_code', 'wpgoco_client_id', 'wpgoco_secret_id', 'wpgoco_sheetId', 'wpgoco_sheetTabs', 'wpgoco_email_account', 'wpgoco_pro_upgrade_notice_interval', 'wpgoco_pro_close_upgrade_notice', 'wpgoco_token_manual', 'wpgoco_email_account_manual');

