-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lt_page_default', 'lt_sh_search', 'lt_mt_opt', 'lt_lt_opt', 'tlt_opt_metabox');

