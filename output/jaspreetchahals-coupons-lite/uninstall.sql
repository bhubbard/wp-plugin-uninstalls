-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jcorgcr_default_height', 'jcorgcr_default_width', 'jcorgcr_default_theme_color', 'jcorgcr_default_notification_email', 'jcorgcr_default_failure_limit', 'jcorgcr_default_send_expiry_notification', 'jcorgcr_default_coupon_category', 'jcorgcr_obfuscate', 'disply_jcorgcr_url', 'jcorgcr_db_version', 'jcorgcr_intermediate_page_id');

