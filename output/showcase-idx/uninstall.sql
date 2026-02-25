-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('showcaseidx_api_v2_host', 'showcaseidx_cdn_host', 'showcaseidx_api_key', 'showcaseidx_template', 'showcaseidx_setup_step', 'showcaseidx_url_namespace', 'showcaseidx_fake', 'showcaseidx_product_version', 'showcaseidx_cache_version', 'showcaseidx_search_page', 'showcaseidx_deprovision_install_id', 'showcaseidx_website_uuid', 'showcaseidx_install_id', 'showcaseidx_website_name');

