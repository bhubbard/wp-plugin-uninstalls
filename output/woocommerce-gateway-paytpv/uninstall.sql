-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('IdUser', 'TokenUser', 'Resultado', 'Log de operación', '_customer_ip_address', 'PAN', '_next_paytpv_ref', 'referencia_paytpv');
DELETE FROM wp_usermeta WHERE meta_key IN ('IdUser', 'TokenUser', 'Resultado', 'Log de operación', '_customer_ip_address', 'PAN', '_next_paytpv_ref', 'referencia_paytpv');
DELETE FROM wp_termmeta WHERE meta_key IN ('IdUser', 'TokenUser', 'Resultado', 'Log de operación', '_customer_ip_address', 'PAN', '_next_paytpv_ref', 'referencia_paytpv');
DELETE FROM wp_commentmeta WHERE meta_key IN ('IdUser', 'TokenUser', 'Resultado', 'Log de operación', '_customer_ip_address', 'PAN', '_next_paytpv_ref', 'referencia_paytpv');

