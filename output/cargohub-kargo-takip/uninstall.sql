-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cargohub_free_activation_date', 'cargohub_free_custom_carriers', 'cargohub_free_logger_initialized');
DELETE FROM wp_options WHERE option_name LIKE 'cargohub_free_tracking_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cargohub_last_email_hash', '_cargohub_tracking_email_sent');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cargohub_last_email_hash', '_cargohub_tracking_email_sent');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cargohub_last_email_hash', '_cargohub_tracking_email_sent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cargohub_last_email_hash', '_cargohub_tracking_email_sent');

