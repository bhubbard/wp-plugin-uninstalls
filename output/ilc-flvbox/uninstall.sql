-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ilc_flvbox_path', 'ilc_flvbox_width', 'ilc_flvbox_height', 'ilc_tb', 'ilc_player', 'ilc_flvbox_osflv_bgcolor', 'ilc_flvbox_osflv_fgcolor', 'ilc_flvbox_osflv_volume');

