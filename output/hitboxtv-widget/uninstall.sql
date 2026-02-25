-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sthw_hide_unknown', 'sthw_cache_enable', 'sthw_cache_lifetime', 'widget_st_hitbox_widget');
DELETE FROM wp_options WHERE option_name LIKE 'st_hitbox_widget-%';

