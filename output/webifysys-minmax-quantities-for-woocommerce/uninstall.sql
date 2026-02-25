-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webimiqu_gnrl_sttng_opt');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wbf_min_qty', '_wbf_max_qty', '_wbf_step_qty', '_wbf_default_qty');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wbf_min_qty', '_wbf_max_qty', '_wbf_step_qty', '_wbf_default_qty');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wbf_min_qty', '_wbf_max_qty', '_wbf_step_qty', '_wbf_default_qty');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wbf_min_qty', '_wbf_max_qty', '_wbf_step_qty', '_wbf_default_qty');

