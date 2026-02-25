-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lrwp_layout_type', 'lrwp_smartspeed', 'lrwp_loop_value', 'lrwp_set_margin', 'lrwp_show_nav_true', 'lrwp_autoplay');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lrwp_cname', 'lrwp_cemail', 'lrwp_compname', 'lrwp_comwebsite');
DELETE FROM wp_usermeta WHERE meta_key IN ('lrwp_cname', 'lrwp_cemail', 'lrwp_compname', 'lrwp_comwebsite');
DELETE FROM wp_termmeta WHERE meta_key IN ('lrwp_cname', 'lrwp_cemail', 'lrwp_compname', 'lrwp_comwebsite');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lrwp_cname', 'lrwp_cemail', 'lrwp_compname', 'lrwp_comwebsite');

