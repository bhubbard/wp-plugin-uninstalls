-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ibup_plugin_redirect', 'ibup_imageboss_active', 'ibup_imageboss_lazyload_active', 'ibup_imageboss_hosts', 'ibup_imageboss_source');

