-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dogbytemarketing_sync_mautic_settings', 'dogbytemarketing_sync_mautic_start_time', 'dogbytemarketing_sync_mautic_total_orders', 'dogbytemarketing_last_sync_mautic_order_index', 'dogbytemarketing_sync_mautic_past_orders_complete', 'mautic_sync_settings', 'dogbytemarketing_mautic_access_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mautic_lead_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mautic_lead_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mautic_lead_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mautic_lead_id');

