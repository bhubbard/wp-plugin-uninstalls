-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tlwpvg_m2m_id', 'tlwpvg_m2m_key', 'auto_update_core', 'auto_update_plugins', 'auto_update_themes', 'tlwpvg_last_sync_date', 'update_plugins', 'update_themes');

