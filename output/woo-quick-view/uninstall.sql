-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcqv_options', 'wcqv_style', 'wpcqv_view_install_date', 'woocommerce_enable_lightbox');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpcqv_view_ignore_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpcqv_view_ignore_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpcqv_view_ignore_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpcqv_view_ignore_notice');

