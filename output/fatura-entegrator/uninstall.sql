-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ginvoice_sync_last_update', 'ginvoice_db_version', 'ginvoice_sale_channel_id');

