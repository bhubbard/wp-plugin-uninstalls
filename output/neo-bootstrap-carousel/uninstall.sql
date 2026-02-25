-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nbc-connection', 'nbc_advanced_settings', 'nbc_design_settings', 'nbc_general_settings', '_nbc_plugin_version', '_nbc_page_welcome_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_neo_bootstrap_carousel_slide_source', '_neo_bootstrap_carousel');
DELETE FROM wp_usermeta WHERE meta_key IN ('_neo_bootstrap_carousel_slide_source', '_neo_bootstrap_carousel');
DELETE FROM wp_termmeta WHERE meta_key IN ('_neo_bootstrap_carousel_slide_source', '_neo_bootstrap_carousel');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_neo_bootstrap_carousel_slide_source', '_neo_bootstrap_carousel');

