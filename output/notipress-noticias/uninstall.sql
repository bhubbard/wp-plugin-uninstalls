-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ntpmx_new_content', 'ntpmx_api', 'ntpmx_rich_text', 'ntpmx_links', 'ntpmx_source', 'ntpmx_show_rows', 'ntpmx_clean_rows_in_days', 'ntpmx_date_activation', 'ntpmx_version', 'ntpmx_sku', 'ntpmx_product', 'ntpmx_date_install', 'ntpmx_date_update', 'ntpmx_minutes', 'ntpmx_qty', 'ntpmx_customer_id', 'ntpmx_sku_name', 'ntpmx_last_check');

