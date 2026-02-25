-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('firstchoice', 'first_choice_token', 'modified_after', 'firstchoice_log_message_type', 'firstchoice_log_message', 'products_imported', 'firstchoice_sync_count', 'firstchoice_sync_countt', 'firstchoice_sync_total', 'wc_attribute_taxonomies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_lockupcode', '_msrp', '_cost', '_location', '_product_attributes', '_stock_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_lockupcode', '_msrp', '_cost', '_location', '_product_attributes', '_stock_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_lockupcode', '_msrp', '_cost', '_location', '_product_attributes', '_stock_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_lockupcode', '_msrp', '_cost', '_location', '_product_attributes', '_stock_status');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%';

