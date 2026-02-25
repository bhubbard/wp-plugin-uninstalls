-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adz_ad_options', 'adz_publisher_options', 'next_adz_pool', 'adz_session_option');
DELETE FROM wp_options WHERE option_name LIKE 'template_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('adz_rotation_shortcode', 'network_ad_id', 'affiliation_network_name', 'affiliation_network_url', 'affiliation_id', 'network_ad_error');
DELETE FROM wp_usermeta WHERE meta_key IN ('adz_rotation_shortcode', 'network_ad_id', 'affiliation_network_name', 'affiliation_network_url', 'affiliation_id', 'network_ad_error');
DELETE FROM wp_termmeta WHERE meta_key IN ('adz_rotation_shortcode', 'network_ad_id', 'affiliation_network_name', 'affiliation_network_url', 'affiliation_id', 'network_ad_error');
DELETE FROM wp_commentmeta WHERE meta_key IN ('adz_rotation_shortcode', 'network_ad_id', 'affiliation_network_name', 'affiliation_network_url', 'affiliation_id', 'network_ad_error');

