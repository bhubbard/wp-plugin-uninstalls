-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('grupnpf_enable_debug_logging', 'grupnpf_ime_prejemnika', 'grupnpf_ulica_prejemnika', 'grupnpf_posta_prejemnika', 'grupnpf_kraj_prejemnika', 'grupnpf_iban_prejemnika', 'grupnpf_koda_namena', 'grupnpf_referenca_prejemnika', 'grupnpf_namen_placila', 'grupnpf_predpona_upn_slike', 'grupnpf_admin_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_grupnpf_upn_url', '_grupnpf_upn_path');
DELETE FROM wp_usermeta WHERE meta_key IN ('_grupnpf_upn_url', '_grupnpf_upn_path');
DELETE FROM wp_termmeta WHERE meta_key IN ('_grupnpf_upn_url', '_grupnpf_upn_path');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_grupnpf_upn_url', '_grupnpf_upn_path');

