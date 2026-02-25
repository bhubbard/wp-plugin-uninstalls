-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cn_nf_exclude_domains', 'cn_nf_apply_to_menu');

