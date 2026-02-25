-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'wc-enviamelo-%';
DELETE FROM wp_options WHERE option_name LIKE '%-notices';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_wc_enviamelo_dni', '_shipping_wc_enviamelo_dni', '_enviamelo_point', '_enviamelo_point_descr', '_enviamelo_point_schedules', '_enviamelo_term');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_wc_enviamelo_dni', '_shipping_wc_enviamelo_dni', '_enviamelo_point', '_enviamelo_point_descr', '_enviamelo_point_schedules', '_enviamelo_term');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_wc_enviamelo_dni', '_shipping_wc_enviamelo_dni', '_enviamelo_point', '_enviamelo_point_descr', '_enviamelo_point_schedules', '_enviamelo_term');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_wc_enviamelo_dni', '_shipping_wc_enviamelo_dni', '_enviamelo_point', '_enviamelo_point_descr', '_enviamelo_point_schedules', '_enviamelo_term');

