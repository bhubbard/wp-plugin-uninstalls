-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('comarquage_global_pivot_enable', 'comarquage_global_css_enable', 'comarquage_global_js_leaflet_enable', 'comarquage_global_poweredby', 'comarquage_debug_enable', 'comarquage_update_time', 'comarquage_od_notice_dismissed');

