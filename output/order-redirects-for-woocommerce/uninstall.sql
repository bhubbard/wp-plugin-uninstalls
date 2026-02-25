-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wps_wc_redirect_default', 'wps_wc_redirect_append_order_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('redirect_url', 'redirect_url_priority');
DELETE FROM wp_usermeta WHERE meta_key IN ('redirect_url', 'redirect_url_priority');
DELETE FROM wp_termmeta WHERE meta_key IN ('redirect_url', 'redirect_url_priority');
DELETE FROM wp_commentmeta WHERE meta_key IN ('redirect_url', 'redirect_url_priority');

