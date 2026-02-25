-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('srx_canonical_check', 'srx_internal_check', 'srx_metaval_check', 'srx-metatitle-check', 'srx-whitelist-kwd', 'srx-whitelist-kwd-box', 'srx_popup_open');

