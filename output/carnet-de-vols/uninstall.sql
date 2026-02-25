-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gdcarnet_updated', 'dest_notes', 'gdcarnet_dest_notes', 'prevalidation', 'gdcarnet_prevalidation', 'gdcarnet_db_updated', 'mensualite_std', 'gdcarnet_dest_entretien', 'gdcarnet_last_auto_exec', 'gdcarnet_last_auto_credit', 'geo_account_enable_multi');

