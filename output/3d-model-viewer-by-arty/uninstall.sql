-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('arty_3dmodelviewer_woocommerce_api', 'arty_3dmodelviewer_woocommerce_default_position', 'arty_3dmodelviewer_woocommerce_default_values', 'arty_3dmodelviewer_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('arty_viewer_iframe');
DELETE FROM wp_usermeta WHERE meta_key IN ('arty_viewer_iframe');
DELETE FROM wp_termmeta WHERE meta_key IN ('arty_viewer_iframe');
DELETE FROM wp_commentmeta WHERE meta_key IN ('arty_viewer_iframe');

