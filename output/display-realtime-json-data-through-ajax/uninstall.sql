-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('drjsondata_options', 'drjsondata_my_plugin_notice_shown');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cf7ccav_enable', '_cf7ccav_name', '_cf7ccav_price', '_cf7ccav_id', '_cf7ccav_gateway');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cf7ccav_enable', '_cf7ccav_name', '_cf7ccav_price', '_cf7ccav_id', '_cf7ccav_gateway');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cf7ccav_enable', '_cf7ccav_name', '_cf7ccav_price', '_cf7ccav_id', '_cf7ccav_gateway');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cf7ccav_enable', '_cf7ccav_name', '_cf7ccav_price', '_cf7ccav_id', '_cf7ccav_gateway');

