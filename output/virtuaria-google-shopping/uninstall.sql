-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('virtuaria_gstore_code', 'virtuaria_google_ignore_categories', 'virtuaria_google_ignore_groups', 'virtuaria_google_frequency_feed', 'virtuaria_google_analytics', 'virtuaria_google_feed_message');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_unity_metric', '_box_metric', '_price', '_product_brand');
DELETE FROM wp_usermeta WHERE meta_key IN ('_unity_metric', '_box_metric', '_price', '_product_brand');
DELETE FROM wp_termmeta WHERE meta_key IN ('_unity_metric', '_box_metric', '_price', '_product_brand');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_unity_metric', '_box_metric', '_price', '_product_brand');

