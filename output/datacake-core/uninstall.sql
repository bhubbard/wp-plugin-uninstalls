-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('isp-global-settings', 'datacake_redir_page_id', 'datacake_redir_force', 'datacake_api', 'datacake_api_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wda_remote_id', '_wporg_meta_key', 'isp_product_type_id', 'isp_logo', 'isp_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('wda_remote_id', '_wporg_meta_key', 'isp_product_type_id', 'isp_logo', 'isp_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('wda_remote_id', '_wporg_meta_key', 'isp_product_type_id', 'isp_logo', 'isp_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wda_remote_id', '_wporg_meta_key', 'isp_product_type_id', 'isp_logo', 'isp_number');

