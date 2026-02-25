-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aisk_plugin_version', 'aisk_settings', 'aisk_last_pdf_processing');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';
DELETE FROM wp_options WHERE option_name LIKE 'aisk_url_user_message_%';
DELETE FROM wp_options WHERE option_name LIKE 'aisk_url_processing_%';
DELETE FROM wp_options WHERE option_name LIKE 'aisk_bot_protected_url_%';
DELETE FROM wp_options WHERE option_name LIKE 'aisk_order_auth_%';
DELETE FROM wp_options WHERE option_name LIKE 'aisk_otp_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aisk_pdf_processed', '_aisk_pdf_chunks_count', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aisk_pdf_processed', '_aisk_pdf_chunks_count', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aisk_pdf_processed', '_aisk_pdf_chunks_count', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aisk_pdf_processed', '_aisk_pdf_chunks_count', '_wp_page_template');

