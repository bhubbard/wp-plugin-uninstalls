-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dpffm_plugin_do_activation_redirect', 'dpffm_handle', 'dpffm_subtitle', 'dpffm_hideimage', 'dpffm_view', 'dpffm_gridview', 'dpffm_titletag', 'dpffm_readmore', 'dpffm_numposts', 'upload_image', 'dpffm_dateformat');

