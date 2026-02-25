-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpb_gqb_installed', 'wpb_gqb_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpb_gqb_disable', '_stock_status', 'wpb_gqb_pro_discount_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpb_gqb_disable', '_stock_status', 'wpb_gqb_pro_discount_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpb_gqb_disable', '_stock_status', 'wpb_gqb_pro_discount_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpb_gqb_disable', '_stock_status', 'wpb_gqb_pro_discount_dismissed');

