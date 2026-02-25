-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('imegateleport_error', 'imegateleport-settings-fullname', 'imegateleport-settings-kod', 'imegateleport-settings-postinstall', 'imegateleport-settings-article', 'imegateleport-settings-fulldesc', 'imegateleport-settings-warehouse-active', 'imegateleport_stat_groups', 'imegateleport_stat_groups_replace', 'imegateleport_stat_goods', 'imegateleport_stat_goods_replace', 'imegateleport_stat_date', 'imegateleport-settings-max-body-size', 'woocommerce_db_version', 'woocommerce_version', 'imegateleport_progress', 'imegateleport_complete', 'imegateleport_files', 'imegateleport-settings-warehouse', 'imegateleport-settings-zip', 'imegateleport_query');
DELETE FROM wp_options WHERE option_name LIKE 'imegateleport-settings-%';

